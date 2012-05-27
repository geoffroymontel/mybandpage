class FacebookPageNewsController < ApplicationController
  def index
    FacebookPage.token
  end
end
