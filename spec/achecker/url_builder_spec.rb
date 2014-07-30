require 'spec_helper'

module AChecker

  describe UrlBuilder do

    let(:id) { "12345" }
    let(:builder) { UrlBuilder.new(id) }

    describe "#build" do

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

    end

  end

end
