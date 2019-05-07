require 'net/http'
require 'uri'
require "line_notify_client/api_client"

module Line
  module Notify
    module Client
      def self.message(token: nil, message: nil)
        client = ApiClient.new
        client.message(token, message)
      end
    end
  end
end
