require 'faraday'
require 'multi_json'

class FacebookOauthEndpoint
  class << self
    # define class variables
    attr_accessor :app_id
    attr_accessor :app_secret
  end

  @@token = nil

  def self.token
    return @@token unless @@token.nil?

    connection = Faraday.new(:url => 'https://graph.facebook.com')
    response = connection.get "oauth/access_token?client_id=#{FacebookOauthEndpoint::app_id}&client_secret=#{FacebookOauthEndpoint::app_secret}&grant_type=client_credentials"
    @@token = $1 if response.body =~ /^access_token=(.*)$/
  end
end
