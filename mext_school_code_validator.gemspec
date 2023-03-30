# frozen_string_literal: true

Gem::Specification.new do |spec|
  spec.name = "mext_school_code_validator"
  spec.version = "1.0.0"
  spec.authors = ["Seiei Miyagi"]
  spec.email = ["hanachin@gmail.com"]

  spec.summary = "文科省学校コードのバリデーター"
  spec.description = "文科省学校コードのバリデーター https://www.mext.go.jp/b_menu/toukei/mext_01087.html"
  spec.homepage = "https://github.com/hanachin/mext_school_code_validator"
  spec.license = "MIT"
  spec.required_ruby_version = ">= 2.6.0"

  spec.metadata["allowed_push_host"] = "https://rubygems.org/"
  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/hanachin/mext_school_code_validator/blob/#{spec.version}"
  spec.metadata["changelog_uri"] = "https://github.com/hanachin/mext_school_code_validator/blob/#{spec.version}/CHANGELOG.md"
  spec.metadata["rubygems_mfa_required"] = "true"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject do |f|
      (f == __FILE__) || f.match(%r{\A(?:(?:bin|test|spec|features)/|\.(?:git|travis|circleci)|appveyor)})
    end
  end
  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "activemodel"

  # For more information and examples about making a new gem, check out our
  # guide at: https://bundler.io/guides/creating_gem.html
end
