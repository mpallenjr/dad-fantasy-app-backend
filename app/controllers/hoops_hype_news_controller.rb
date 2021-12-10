class HoopsHypeNewsController < ApplicationController
    #Controller for RSS Feed from Hoops Hype.  This is for NBA specifically.  Running on backend to avoid CORS issues.

  def index
    response = HTTP.get("https://hoopshype.com/feed/")
    render json: response.to_s
  end
end
