class FfaNewsController < ApplicationController
  #Controller for RSS Feed from Fantasy Football Analytics.  This is for NFL specifically.  Running on backend to avoid CORS issues.
  def index
    response = HTTP.get("https://fantasyfootballanalytics.net/feed")
    render json: response.to_s
  end
end
