require 'faraday'
require 'multi_json'

class FacebookOauthEndpoint
  cattr_accessor :app_id
  cattr_accessor :app_secret

  @@token = nil

  def self.token
    return @@token unless @@token.nil?

    connection = Faraday.new(:url => 'https://graph.facebook.com')
    response = connection.get "oauth/access_token?client_id=#{FacebookOauthEndpoint::app_id}&client_secret=#{FacebookOauthEndpoint::app_secret}&grant_type=client_credentials"
    @@token = $1 if response.body =~ /^access_token=(.*)$/
  end
end
