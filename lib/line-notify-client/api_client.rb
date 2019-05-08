require 'net/http'
require 'uri'
require 'json'

class ApiClient
  class ArgumentError < StandardError; end

  attr_reader :http, :uri
  def initialize
    @uri = URI.parse("https://notify-api.line.me/api/notify")
    http = Net::HTTP.new(uri.host, uri.port)
    http.use_ssl = true
    @http = http
  end

  def message(token, message)
    token ||= ENV['LINE_NOTIFY_TOKEN']
    raise ArgumentError if token.nil? || message.nil?
    req = Net::HTTP::Post.new uri
    req["Authorization"] = "Bearer #{token}"
    req.set_form_data(message: message)
    res = http.start { |http| http.request req }
    JSON.parse(res.body)
  end
end
