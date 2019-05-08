require 'net/http'
require 'uri'
require "line-notify-client/api_client"

module Line
  module Notify
    module Notify
      def self.message(token: nil, message: nil)
        client = ApiClient.new
        client.message(token, message)
      end
    end
  end
end
