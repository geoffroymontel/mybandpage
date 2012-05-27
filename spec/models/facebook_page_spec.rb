require 'spec_helper'

describe FacebookPage do
  before(:all) do
    # load Facebook app_id and secret from '.env' file in app directory
    File.open(Rails.root.join('.env')).each do |line|
      FacebookPage::app_id = $1 if line =~ /^FB_APP_ID=(.*)$/
      FacebookPage::app_secret = $1 if line =~ /^FB_APP_SECRET=(.*)$/
    end
  end

  describe "::app_id" do
    it "should return the FB_APP_ID environment variable from your application '.env' file and thus not be null" do
      FacebookPage::app_id.should_not be_empty 
    end
  end

  describe "::app_secret" do
    it "should return the FB_APP_SECRET environment variable from your application '.env' file and thus not be null" do
      FacebookPage::app_secret.should_not be_empty 
    end
  end

end