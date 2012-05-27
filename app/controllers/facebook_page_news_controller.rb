class FacebookPageNewsController < ApplicationController
  def index
    logger.debug "[FacebookPageNewsController#index] FacebookPage::app_id = #{FacebookPage::app_id}"
    logger.debug "[FacebookPageNewsController#index] FacebookPage::app_secret = #{FacebookPage::app_secret}"
    FacebookPage.token
  end
end
