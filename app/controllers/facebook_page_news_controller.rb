class FacebookPageNewsController < ApplicationController
  def index
    logger.debug "app_id = #{FacebookOauthEndpoint::app_id}"
    logger.debug "token = #{FacebookOauthEndpoint::token}"
    @feed = FbGraph::Page.new('pierreyvesmace', access_token: FacebookOauthEndpoint::token).posts
  end
end
