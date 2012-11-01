# Elapsed

Calculate the elapsed time between two dates/times from the command line.

## Installation

From the command line, run:

    $ gem install elapsed

Or install it from GitHub with:

    $ gem install bundler
    $ gem clone git://github.com/moubry/elapsed.git
    $ bundle install vendor

## Usage

    $ elapsed start end

Examples:

    $ elapsed 4/24/2010 now
    2 years, 6 months, 9 days, 10 hours, 8 minutes, and 10 seconds

    $ elapsed 5/25/1977 5/15/2005
    27 years, 11 months, and 20 days

    $ elapsed 10:34pm 6:13am
    16 hours and 21 minutes

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Added some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request

## Common commands for gem development

    $ gem build elapsed.gemspec
    $ bundle exec bin/elapsed