class PlayerProfilerNewsController < ApplicationController
  
  #Controller for RSS Feed from Player Profiler.  This is for NFL specifically.  Running on backend to avoid CORS issues.
  
  def index
    response = HTTP.get("https://www.playerprofiler.com/feed/")
    render json: response.to_s
  end
end
