class FilteredKeyword3TweetsController < ApplicationController
  
  #Filtered search based on query params from the Twitter API - DAILY FANTASY SPORTS

  def index
    response = HTTP.auth("Bearer #{Rails.application.credentials.twitterapi}").get("https://api.twitter.com/2/tweets/search/recent?query=daily%20fantasy%20sports%20-is%3Aretweet")

    render json: response.parse
  end
end
