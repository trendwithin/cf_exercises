require "minitest/autorun"
require "minitest/spec"

class FeatureSpec < Minitest::Spec
  require "capybara/poltergeist"
  include Capybara::DSL
  Capybara.default_driver = :poltergeist
  Capybara.app_host = "http://localhost:4000"
  Capybara.server_host = "local"
  Capybara.server_port = "4000"
  register_spec_type(/page$/, self)
end
