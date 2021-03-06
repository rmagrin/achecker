# AChecker [![Gem Version](https://badge.fury.io/rb/achecker.svg)](http://badge.fury.io/rb/achecker) [![Build Status](https://travis-ci.org/rmagrin/achecker.svg?branch=master)](https://travis-ci.org/rmagrin/achecker) [![Code Climate](https://codeclimate.com/github/rmagrin/achecker.png)](https://codeclimate.com/github/rmagrin/achecker)

Ruby wrapper for [AChecker Web Accessibility Checker](http://achecker.ca)

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'achecker'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install achecker

## Usage

```ruby
   require 'achecker'

   # replace with the web service id provided for registered users of achecker.
   id = "222c0b31450b95b0e010f5f83d9c9683f95ca89a"
   checker = AChecker::Api.new(id)
   result = checker.check("https://example.com")
```

Optionally you can provide the achecker URL:

```ruby
   require 'achecker'

   # replace with the web service id provided for registered users of achecker.
   id = "222c0b31450b95b0e010f5f83d9c9683f95ca89a"
   checker = AChecker::Api.new(id, "https://achecker.ca/checkacc.php")
   result = checker.check("https://example.com")
```

## Contributing

1. Fork it ( https://github.com/rmagrin/achecker/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request

## License

Copyright (c) 2014 Rafael Magrin

MIT License

Permission is hereby granted, free of charge, to any person obtaining
a copy of this software and associated documentation files (the
"Software"), to deal in the Software without restriction, including
without limitation the rights to use, copy, modify, merge, publish,
distribute, sublicense, and/or sell copies of the Software, and to
permit persons to whom the Software is furnished to do so, subject to
the following conditions:

The above copyright notice and this permission notice shall be
included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE
LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION
OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION
WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
