class PlayerProfilerNewsController < ApplicationController
  def index
    response = HTTP.get("https://www.playerprofiler.com/feed/")
    render json: response.to_s
  end
end
