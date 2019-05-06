require "client/version"
module Line
  module Notify
    module Client
      class Error < StandardError; end
      def self.greet
        "Hello"
      end
    end
  end
end
