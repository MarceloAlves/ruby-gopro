# Gopro
[![Gem Version](https://badge.fury.io/rb/ruby-gopro.svg)](http://badge.fury.io/rb/ruby-gopro)
[![Build Status](https://travis-ci.org/MarceloAlves/ruby-gopro.svg?branch=master)](https://travis-ci.org/MarceloAlves/ruby-gopro)
[![Dependency Status](https://gemnasium.com/MarceloAlves/ruby-gopro.svg)](https://gemnasium.com/MarceloAlves/ruby-gopro)
[![Code Climate](https://codeclimate.com/github/MarceloAlves/ruby-gopro/badges/gpa.svg)](https://codeclimate.com/github/MarceloAlves/ruby-gopro)
[![Coverage Status](https://coveralls.io/repos/MarceloAlves/ruby-gopro/badge.svg)](https://coveralls.io/r/MarceloAlves/ruby-gopro)

### Extreme Work In Progress!

Welcome to your new gem! In this directory, you'll find the files you need to be able to package up your Ruby library into a gem. Put your Ruby code in the file `lib/gopro`. To experiment with that code, run `bin/console` for an interactive prompt.

TODO: Delete this and the text above, and describe your gem

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'gopro'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install gopro

## Usage

```ruby
hero = Gopro.new

hero.mode(1)

hero.start_capture
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release` to create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

1. Fork it ( https://github.com/[my-github-username]/gopro/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
