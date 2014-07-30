module AChecker

  class CheckResult

    attr_reader :url, :achecker_url, :num_errors

    def initialize(url, achecker_url, num_errors)
      @url = url
      @achecker_url = achecker_url
      @num_errors = num_errors
    end

    def has_errors
      @num_errors > 0
    end

  end

end
