class FilteredKeywordTweetsController < ApplicationController
  
  #Filtered search based on query params from the Twitter API - FANTASY FOOTBALL
  
  def index
    response = HTTP.auth("Bearer #{Rails.application.credentials.twitterapi}").get("https://api.twitter.com/2/tweets/search/recent?query=fantasy%20football%20dfs%20-is%3Aretweet")

    render json: response.parse
  end

  
end
