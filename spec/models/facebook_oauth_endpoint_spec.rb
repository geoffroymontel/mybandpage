require 'spec_helper'

describe FacebookOauthEndpoint do
  before(:all) do
    # load Facebook app_id and secret from '.env' file in app directory
    File.open(Rails.root.join('.env')).each do |line|
      FacebookOauthEndpoint::app_id = $1 if line =~ /^FB_APP_ID=(.*)$/
      FacebookOauthEndpoint::app_secret = $1 if line =~ /^FB_APP_SECRET=(.*)$/
    end
  end

  describe "::app_id" do
    it "should return the FB_APP_ID environment variable from your application '.env' file and thus not be null" do
      FacebookOauthEndpoint::app_id.should_not be_empty 
    end
  end

  describe "::app_secret" do
    it "should return the FB_APP_SECRET environment variable from your application '.env' file and thus not be null" do
      FacebookOauthEndpoint::app_secret.should_not be_empty 
    end
  end

  describe "#token" do
    it "should return a string" do
      FacebookOauthEndpoint::token.should be_a_kind_of(String)
    end

    it "should return the same token when called a second time" do
      token = FacebookOauthEndpoint::token
      FacebookOauthEndpoint::token.should == token
    end
  end

end