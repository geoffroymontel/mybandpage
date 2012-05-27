Rails.application.config.before_initialize do
    FacebookPage::app_id = ENV['FB_APP_ID']
    FacebookPage::app_secret = ENV['FB_APP_SECRET']
end
