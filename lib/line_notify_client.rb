require "line_notify_client/version"
require "line_notify_client/client"
module Line
  module Notify
    module Client
      class Error < StandardError; end
      def self.test(message)
        ApiClient.send(message)
      end
    end
  end
end
