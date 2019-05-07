# Line::Notify::Client
- Api Client for LineNotify
    - https://notify-bot.line.me/ja/

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'line-notify-client'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install line-notify-client

## Set up
- require library
```rb
# snake_case
require 'line_notify_client'
```

## Usage
- token use argument
```rb
token = "hoge1234"
message = "hogehoge"
Line::Notify::Client.message(token: token, message: message)
```
- token use environment variable
```bash
# add LINE_NOTIFY_TOKEN
$ vi ~/.bash_profile
LINE_NOTIFY_TOKEN="hoge1234"
```
```rb
    Line::Notify::Client.message(message: message)
```
## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/line-notify-client. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the Line::Notify::Client project’s codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/[USERNAME]/line-notify-client/blob/master/CODE_OF_CONDUCT.md).
