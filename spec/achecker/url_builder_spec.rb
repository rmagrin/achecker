require 'spec_helper'

module AChecker

  describe UrlBuilder do

    describe "#build" do

      let(:id) { "12345" }
      let(:achecker_url) { "https://some.other.url/checkacc.php" } 
      let(:builder) { UrlBuilder.new(id, achecker_url) }

      context "when output is rest" do
        it "should set the id" do
          url = builder.build("http://target.url", "rest").to_s
          expect(url).to include("id=#{id}")
        end
      end

      context "when output is html" do
        it "should not set the id" do
          url = builder.build("http://target.url", "html").to_s
          expect(url).not_to include("id=#{id}")
        end
      end

      it "should use the provided url" do
        url = builder.build("http://target.url", "rest").to_s
        expect(url).to start_with(achecker_url)
      end

    end

  end

end
