class RotowireNbaNewsController < ApplicationController
  #Controller for RSS Feed from Rotowire.  This is for NBA specifically.  Running on backend to avoid CORS issues.
  
  def index
    response = HTTP.get("https://www.rotowire.com/rss/news.php?sport=NBA")
    render json: response.to_s
  end
end
