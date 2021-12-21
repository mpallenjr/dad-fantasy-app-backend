class RotowireNflNewsController < ApplicationController
  
  #Controller for RSS Feed from Rotowire.  This is for NFL specifically.  Running on backend to avoid CORS issues.
  
  def index
    response = HTTP.get("https://www.rotowire.com/rss/news.php?sport=NFL")
    render json: response.to_s
  end
end
