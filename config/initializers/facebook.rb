Rails.application.config.before_initialize do
    FacebookOauthEndpoint::app_id = ENV['FB_APP_ID']
    FacebookOauthEndpoint::app_secret = ENV['FB_APP_SECRET']
end
