class RotowireNewsController < ApplicationController
  def index
    #Controller for RSS Feed from Rotowire.  This is for Featured Articles.  Running on backend to avoid CORS issues.
    
    response = HTTP.get("https://www.rotowire.com/rss/articles.php")
    render json: response.to_s
  end
end
