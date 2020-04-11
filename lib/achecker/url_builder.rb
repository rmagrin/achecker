require 'cgi'

module AChecker

  class UrlBuilder

    def initialize(id, achecker_url)
      @id = id
      @achecker_url = achecker_url
    end

    def build(target_url, output)
      url = "#{@achecker_url}?uri=#{CGI::escape(target_url)}&output=#{output}"
      url = "#{url}&id=#{@id}" if output == "rest"
      URI(url)
    end

  end

end
