require 'cgi'

module AChecker

  class UrlBuilder

    BASE_URL = "http://achecker.ca/checkacc.php"

    def initialize(id = nil)
      @id = id
    end

    def build(target_url, output)
      url = "#{BASE_URL}?uri=#{CGI::escape(target_url)}&output=#{output}"
      url = "#{url}&id=#{@id}" if output == "rest"
      URI(url)
    end

  end

end
