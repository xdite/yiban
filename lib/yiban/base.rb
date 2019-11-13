# frozen_string_literal: true
require 'net/http'
require 'uri'
require 'json'

module Yiban
  class Base


    def response
      uri = URI.parse("https://api.yiban.io/title/search")
      request = Net::HTTP::Post.new(uri)
      request.content_type = "application/json"

      request["X-Extension-Token"] = Yiban.config[:extension_token]

      request.body = JSON.dump({
        "keyword": @text,
        "size": @size,
        "page": 1
      })


      req_options = {
        use_ssl: uri.scheme == "https",
      }

      response = Net::HTTP.start(uri.hostname, uri.port, req_options) do |http|
        http.request(request)
      end
    end

    def json
      JSON.parse(response.body)
    end


  end
end
