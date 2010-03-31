module Exemplor

  class ExampleEnv

    class << self

      alias_method :helpers, :class_eval
      attr_accessor :setup_block

      def setup(&blk) self.setup_block = blk end

      # runs the block in the example environment, returns triple:
      # [status, result, stderr]
      def run(&code)
        env = self.new
        stderr = StringIO.new
        status, result = begin
          real_stderr = $stderr ; $stderr = stderr # swap stderr

          env.instance_eval(&self.setup_block) if self.setup_block
          value = env.instance_eval(&code)
          result = env._status == :info ?
            render_value(value) : render_checks(env._checks)
          [env._status, result]

        rescue Object => error
          [:error, render_error(error)]
        ensure
          $stderr = real_stderr # swap stderr back
        end
        [status, result, stderr.rewind && stderr.read]
      end

      # -- these "render" methods could probably be factored away

      # yaml doesn't want to print a class
      def render_value(value)
        value.kind_of?(Class) ? value.inspect : value
      end

      def render_checks(checks)
        failure = nil
        out = []
        checks.each do |check|
          failure = check if check.failure?
          break if failure
          out << OrderedHash do |o|
            o['name'] = check.name
            o['status'] = check.status.to_s
            o['result'] = render_value check.value
          end
        end
        if failure
          out << OrderedHash do |o|
            o['name'] = failure.name
            o['status'] = failure.status.to_s
            o['expected'] = failure.expectation
            o['actual'] = render_value failure.value
          end
        end
        out
      end

      def render_error(error)
        OrderedHash do |o|
          o['class'] = error.class.name
          o['message'] = error.message
          o['backtrace'] = error.backtrace
        end
      end

    end

    attr_accessor :_checks

    def initialize
      @_checks = []
    end

    def Check(value)
      file, line_number = caller.first.match(/^(.+):(\d+)/).captures
      line = File.readlines(file)[line_number.to_i - 1].strip
      name = line[/Check\((.+?)\)\s*($|#|\[|\.is.+)/,1]
      check = Check.new(name, value)
      _checks << check
      check
    end

    def _status
      (:info    if _checks.empty?) ||
      (:failure if _checks.any? { |c| c.failure? }) ||
      (:success if _checks.all? { |c| c.success? }) ||
       :infos
    end

  end

  def environment
    ExampleEnv
  end
end