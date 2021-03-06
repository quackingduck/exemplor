# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in rakefile, and run the gemspec command
# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{exemplor}
  s.version = "3000.3.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Myles Byrne"]
  s.date = %q{2010-06-10}
  s.email = %q{myles@myles.id.au}
  s.extra_rdoc_files = [
    "README.md",
     "TODO"
  ]
  s.files = [
    ".gitignore",
     "README.md",
     "Rakefile",
     "TODO",
     "VERSION",
     "examples.rb",
     "examples/an_error.rb",
     "examples/assertion_failure.rb",
     "examples/assertion_success.rb",
     "examples/assertion_success_and_failure.rb",
     "examples/assertion_success_and_info.rb",
     "examples/check_parsing.rb",
     "examples/checking_nil.rb",
     "examples/failure_halts_execution.rb",
     "examples/foobar.rb",
     "examples/helpers.rb",
     "examples/multi_show.rb",
     "examples/no_checks.rb",
     "examples/no_checks_non_string.rb",
     "examples/oneliner.rb",
     "examples/rack.rb",
     "examples/show_with_disambiguation.rb",
     "examples/showing_classes.rb",
     "examples/simple_show.rb",
     "examples/ten_percent_failures.rb",
     "examples/with_setup.rb",
     "exemplor.gemspec",
     "lib/checker.rb",
     "lib/command.rb",
     "lib/environment.rb",
     "lib/examples.rb",
     "lib/exemplor.rb",
     "lib/exemplor/rack.rb",
     "lib/ext.rb",
     "lib/result_printer.rb",
     "vendor/orderedhash-0.0.6/gemspec.rb",
     "vendor/orderedhash-0.0.6/install.rb",
     "vendor/orderedhash-0.0.6/lib/orderedautohash.rb",
     "vendor/orderedhash-0.0.6/lib/orderedhash.rb",
     "vendor/term-ansicolor-1.0.5/CHANGES",
     "vendor/term-ansicolor-1.0.5/COPYING",
     "vendor/term-ansicolor-1.0.5/README",
     "vendor/term-ansicolor-1.0.5/Rakefile",
     "vendor/term-ansicolor-1.0.5/VERSION",
     "vendor/term-ansicolor-1.0.5/bin/cdiff",
     "vendor/term-ansicolor-1.0.5/bin/decolor",
     "vendor/term-ansicolor-1.0.5/examples/example.rb",
     "vendor/term-ansicolor-1.0.5/install.rb",
     "vendor/term-ansicolor-1.0.5/lib/term/ansicolor.rb",
     "vendor/term-ansicolor-1.0.5/lib/term/ansicolor/version.rb",
     "vendor/term-ansicolor-1.0.5/tests/ansicolor_test.rb"
  ]
  s.homepage = %q{http://github.com/quackingduck/exemplor}
  s.rdoc_options = ["--charset=UTF-8"]
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.7}
  s.summary = %q{A light-weight, low-fi way to provide executable usage examples of your code.}
  s.test_files = [
    "examples/an_error.rb",
     "examples/assertion_failure.rb",
     "examples/assertion_success.rb",
     "examples/assertion_success_and_failure.rb",
     "examples/assertion_success_and_info.rb",
     "examples/check_parsing.rb",
     "examples/checking_nil.rb",
     "examples/failure_halts_execution.rb",
     "examples/foobar.rb",
     "examples/helpers.rb",
     "examples/multi_show.rb",
     "examples/no_checks.rb",
     "examples/no_checks_non_string.rb",
     "examples/oneliner.rb",
     "examples/rack.rb",
     "examples/show_with_disambiguation.rb",
     "examples/showing_classes.rb",
     "examples/simple_show.rb",
     "examples/ten_percent_failures.rb",
     "examples/with_setup.rb"
  ]

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
    else
    end
  else
  end
end

