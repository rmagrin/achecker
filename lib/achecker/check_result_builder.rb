require 'nokogiri'

require 'achecker/check_result'

module AChecker

  class CheckResultBuilder

    def build(url, achecker_url, xml)
      xml_doc = Nokogiri::XML(xml)

      CheckResult.new(
        url,
        achecker_url,
        xml_doc.xpath("//summary/NumOfErrors")[0].text.to_i
      )
    end

  end

end
