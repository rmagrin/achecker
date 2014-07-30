require 'net/http'
require 'achecker/url_builder'
require 'achecker/check_result_builder'

module AChecker

  class Api

    def initialize(id)
      @url_builder = UrlBuilder.new(id)
      @result_builder = CheckResultBuilder.new
    end

    def check(target_url)
      url = @url_builder.build(target_url, "rest")
      response = Net::HTTP.get_response(url)

      raise "Error processing \"#{target_url}\". Response status code #{response.code}" unless response.kind_of?(Net::HTTPSuccess)

      @result_builder.build(target_url, @url_builder.build(target_url, "html"), response.body)
    end

  end

end
