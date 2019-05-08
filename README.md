# Line::Notify::Client
- https://rubygems.org/gems/line-notify-client
- Api Client for LineNotify
    - https://notify-bot.line.me/ja/
- Send line message

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
require 'line-notify-client'
```

## Usage
- token use argument
```rb
token = "hoge1234" # line_notify_access_token
message = "hogehoge" # send_message
Line::Notify::Client.message(token: token, message: message)
```
- token use environment variable
```bash
# add line_notify_access_token
$ vi ~/.bash_profile
LINE_NOTIFY_TOKEN="hoge1234"
```
```rb
message = "hogehoge" # send_message
Line::Notify::Client.message(message: message)
```

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/emono/line-notify-client. This project is intended to be a safe, welcoming space for collaboration.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
