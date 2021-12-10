class SleeperUNewsController < ApplicationController
  def index
    response = HTTP.get("https://sleeperu.com/feed/")
    render json: response.to_s
  end
end
