class NbaNewsController < ApplicationController
  def index
    # Index action will show all of the top headlines from the NEWS API based on the hardcoded search filter in the HTTP response below.  An API KEY would be required to use this feature in the app.  This generates NBA focused news headlines in the United States, in english.

    response = HTTP.get("https://newsapi.org/v2/top-headlines?q=NBA&country=us&category=sports&apiKey=#{Rails.application.credentials.newsapi}")
    render json: response.parse
  end
end
