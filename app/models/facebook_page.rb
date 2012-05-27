require 'faraday'
require 'multi_json'

class FacebookPage
  class << self
    # define class variables
    attr_accessor :app_id
    attr_accessor :app_secret
  end

  def token
    return @token unless @token.nil?

    connection = Faraday.new(:url => 'https://graph.facebook.com')
    response = connection.get "oauth/access_token?client_id=#{FacebookPage::app_id}&client_secret=#{FacebookPage::app_secret}&grant_type=client_credentials"
    @token = response.body
  end

end