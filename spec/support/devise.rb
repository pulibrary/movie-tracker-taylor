require_relative "request_spec_helper"

RSpec.configure do |config|
  config.include RequestSpecHelper, type: :request
end
