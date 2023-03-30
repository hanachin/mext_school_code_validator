# frozen_string_literal: true

require "mext_school_code_validator"
require "debug"
require "shoulda/matchers"

class FakeApplication < ::Rails::Application
  config.root = "#{__dir__}/dummy"
  config.eager_load = true
  config.i18n.available_locales = %i[en ja]
  config.i18n.fallbacks = %i[en ja]
end
Rails.application.initialize!

RSpec.configure do |config|
  # Enable flags like --only-failures and --next-failure
  config.example_status_persistence_file_path = ".rspec_status"

  # Disable RSpec exposing methods globally on `Module` and `main`
  config.disable_monkey_patching!

  config.expect_with :rspec do |c|
    c.syntax = :expect
  end
end

Shoulda::Matchers.configure do |config|
  config.integrate do |with|
    with.test_framework :rspec
    with.library :active_model
  end
end
