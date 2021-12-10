class DynastyNerdsNewsController < ApplicationController
  def index
    response = HTTP.get("https://www.dynastynerds.com/feed/")
    render json: response.to_s
  end
end
