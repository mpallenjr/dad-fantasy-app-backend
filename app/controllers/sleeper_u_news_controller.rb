class SleeperUNewsController < ApplicationController
  #Controller for RSS Feed from Sleeper U.  This is for NFL specifically.  Running on backend to avoid CORS issues.
  def index
    response = HTTP.get("https://sleeperu.com/feed/")
    render json: response.to_s
  end
end
