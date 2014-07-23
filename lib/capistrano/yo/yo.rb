require 'capistrano'

module Capistrano
  module Yo
    def self.load_into(configuration)
      configuration.load do
        after 'deploy', 'yo:finished'
        after 'deploy:migrations', 'yo:finished'

        namespace :yo do
          task :finished do
            send_yo
          end
        end

        def send_yo
          yo_token = fetch(:yo_token)
          yo_usernames = fetch(:yo_usernames)
          raise "Undefined capistrano-yo token" if yo_token.nil? || yo_token.empty?
          raise "Undefined capistrano-yo usernames" if yo_usernames.empty?

          uri = URI.parse("http://api.justyo.co/yo/")
          yo_usernames.each do |username|
            Net::HTTP.post_form(uri, api_token: yo_token, username: username)
          end
        end
      end
    end
  end
end

if Capistrano::Configuration.instance
  Capistrano::Yo.load_into(Capistrano::Configuration.instance)
end
