require 'spec_helper'

module AChecker

  describe CheckResult do

    describe "#has_errors" do

      context "when result does not have errors" do
        it "should return false" do
          result = CheckResult.new("url", "achecker_url", 0)
          expect(result.has_errors).to be_falsy
        end
      end

      context "when result has errors" do
        it "should return true" do
          result = CheckResult.new("url", "achecker_url", 1)
          expect(result.has_errors).to be_truthy
        end
      end

    end

  end

end
