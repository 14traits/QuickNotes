# frozen_string_literal: true

require_relative "lib/QuickNotes/version"

Gem::Specification.new do |spec|
  spec.name = "QuickNotes"
  spec.version = QuickNotes::VERSION
  spec.authors = ["John Rogers"]
  spec.email = ["john.rogers@mac.com"]

  spec.summary = "a basic terminal app - called QuickNotes - which allows the user to jot down quick notes and retrieve them at a later time."
  spec.description = "In this exercise, you'll be creating a basic terminal app - called QuickNotes - which allows the user to jot down quick notes and retrieve them at a later time. However, what's unique about this app is that it won't be run using a ruby FILENAME command. Instead, the app will be what's known as an executable app, meaning that it is run with a custom command in the terminal."
  spec.homepage = "https://github.com/14traits/quicknotes"
  spec.license = "MIT"
  spec.required_ruby_version = ">= 2.6.0"

  spec.metadata["allowed_push_host"] = "https://rubygems.org"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/14traits/quicknotes"
  spec.metadata["changelog_uri"] = "https://github.com/14traits/quicknotes/blob/main/CHANGELOG.md"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(__dir__) do
    `git ls-files -z`.split("\x0").reject do |f|
      (f == __FILE__) || f.match(%r{\A(?:(?:bin|test|spec|features)/|\.(?:git|travis|circleci)|appveyor)})
    end
  end
  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  # Uncomment to register a new dependency of your gem
  spec.add_dependency "rake", "~> 13.0"
  spec.add_dependency "minitest", "~> 5.0"
  spec.add_dependency "rubocop", "~> 1.21"

  # For more information and examples about making a new gem, check out our
  # guide at: https://bundler.io/guides/creating_gem.html
end
