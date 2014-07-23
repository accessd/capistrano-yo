# Capistrano Yo!

This gem sends notifications when deploy finished via [Yo app](http://www.justyo.co/). Meanwhile worked with Capistrano 2.

## Installation

Add this line to your application's Gemfile:

    gem 'capistrano-yo', group: [:development]

And then execute:

    $ bundle

## Usage

First install [Yo app](https://itunes.apple.com/app/Yo./id834335592?mt=8) and signup. 
Then follow to [http://yoapi.justyo.co/](http://yoapi.justyo.co/) and sign up in API with username like 'My awesome project deploy', 
and get your token on page [http://yoapi.justyo.co/](http://yoapi.justyo.co/).

Add to Capfile

```ruby
require 'capistrano/yo'
```

add to deploy.rb file

```ruby
set :yo_token, "yo_token"
set :yo_usernames, %w(username) # list of users which will be sent Yo!
```

## Contributing

1. Fork it ( https://github.com/accessd/capistrano-yo/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
6. Yo!
