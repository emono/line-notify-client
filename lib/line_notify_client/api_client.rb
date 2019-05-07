require 'net/http'
require 'uri'

class ApiClient
  attr_reader :http, :uri
  def initialize
    @uri = URI.parse("https://notify-api.line.me/api/notify")
    http = Net::HTTP.new(uri.host, uri.port)
    http.use_ssl = true
    @http = http
  end

  def message(token, message)
    req = Net::HTTP::Post.new uri
    req["Authorization"] = "Bearer #{token}"
    req.set_form_data(message: message)
    res = http.start { |http| http.request req }
    return res.body
  end
end
