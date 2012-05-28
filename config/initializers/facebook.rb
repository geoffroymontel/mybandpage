Rails.application.config.before_initialize do
  Rails.logger.debug "in facebook initializer"
  FacebookOauthEndpoint::app_id = ENV['FB_APP_ID']
  Rails.logger.debug "FacebookOauthEndpoint::app_id = #{FacebookOauthEndpoint::app_id}"
  FacebookOauthEndpoint::app_secret = ENV['FB_APP_SECRET']
end
