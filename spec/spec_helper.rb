require "bundler/setup"
Bundler.require(:default, :development)

require "smart_slug"

RSpec.configure do |config|
  config.expect_with :rspec do |c|
    c.syntax = :expect
  end
end

