class FfaNewsController < ApplicationController
  def index
    response = HTTP.get("https://fantasyfootballanalytics.net/feed")
    render json: response.to_s
  end
end
