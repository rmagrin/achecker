require 'spec_helper'
require 'cgi'
require 'webmock/rspec'

module AChecker

  describe Api do

    describe "#check" do

      let(:id) { "12345678" }
      let(:url) { CGI::escape("http://example.com/some-resource/") }
      let(:xml) { <<-eos
          <?xml version="1.0" encoding="ISO-8859-1"?>
          <resultset>
            <summary>
              <NumOfErrors>30</NumOfErrors>
            </summary>
          </resultset>
        eos
      }
     
      context "when achecker url is not provided" do
        it "should check url" do
          stub_request(:get, "https://achecker.ca/checkacc.php")
            .with(:query => {"uri" => url, "id" => id, "output" => "rest"})
            .to_return(:body => xml)

          api = Api.new(id)

          result = api.check(url)

          expect(result.url).to eq(url)
          expect(result.num_errors).to eq(30)
        end
      end

      context "when achecker url is provided" do
        it "should check url" do
          stub_request(:get, "https://some.url/checkacc.php")
            .with(:query => {"uri" => url, "id" => id, "output" => "rest"})
            .to_return(:body => xml)

          api = Api.new(id, "https://some.url/checkacc.php")

          result = api.check(url)

          expect(result.url).to eq(url)
          expect(result.num_errors).to eq(30)
        end
      end
    end

  end

end
