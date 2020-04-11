require 'net/http'
require 'achecker/url_builder'
require 'achecker/check_result_builder'

module AChecker

  class Api

    BASE_URL = "https://achecker.ca/checkacc.php"

    def initialize(id, achecker_url = nil)
      @url_builder = UrlBuilder.new(id, achecker_url || BASE_URL)
      @result_builder = CheckResultBuilder.new
    end

    def check(target_url)
      url = @url_builder.build(target_url, "rest")
      response = Net::HTTP.get_response(url)

      unless response.kind_of?(Net::HTTPSuccess) then
        raise "Error processing \"#{target_url}\". Response status code #{response.code} returned when requesting to achecker at #{url}"
      end

      @result_builder.build(target_url, @url_builder.build(target_url, "html"), response.body)
    end

  end

end
