class DynastyNerdsNewsController < ApplicationController
  #Controller for RSS Feed from Dynasty Nerds.  This is for NFL specifically.  Running on backend to avoid CORS issues.

  def index
    response = HTTP.get("https://www.dynastynerds.com/feed/")
    render json: response.to_s
  end
end
