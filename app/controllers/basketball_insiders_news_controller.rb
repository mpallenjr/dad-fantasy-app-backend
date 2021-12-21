class BasketballInsidersNewsController < ApplicationController
  
  #Controller for RSS Feed from Basketball Insiders.  This is for NBA specifically.  Running on backend to avoid CORS issues.

  def index
    response = HTTP.get("https://www.basketballinsiders.com/feed/")
    render json: response.to_s
  end
end
