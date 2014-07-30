require 'spec_helper'

module AChecker

  describe CheckResultBuilder do

    let (:builder) { CheckResultBuilder.new }

    describe "#build" do

      it "should set numbers of errors" do

        xml = <<-eos
          <?xml version="1.0" encoding="ISO-8859-1"?>
          <resultset>
            <summary>
              <status>FAIL</status>
              <sessionID>ce2a543670703b6d37dc613deda3e64389ad038d</sessionID>
              <NumOfErrors>35</NumOfErrors>
              <NumOfLikelyProblems>0</NumOfLikelyProblems>
              <NumOfPotentialProblems>0</NumOfPotentialProblems>
              <guidelines><guideline>WCAG 2.0 (Level AA)</guideline></guidelines>
            </summary>
          </resultset>
        eos

        result = builder.build("url", "achecker_url", xml)

        expect(result.num_errors).to eq(35)
      end

    end

  end

end
