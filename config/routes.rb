Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  # Web Request Routes for the NEWS API
  get "/nfl_news" => "nfl_news#index"
  get "/nba_news" => "nba_news#index"

  # Web Request Routes for Rotowire RSS Feeds
  get "rotowire_nfl_news" => "rotowire_nfl_news#index"
  get "rotowire_nba_news" => "rotowire_nba_news#index"
  get "rotowire_news" => "rotowire_news#index"

  # Web Request Routes for Misc NFL RSS Feeds
  get "dynasty_nerds_news" => "dynasty_nerds_news#index"
  get "player_profiler_news" => "player_profiler_news#index"

  # Web Request Routes for Misc NBA RSS Feeds
  get "basketball_insiders_news" => "basketball_insiders_news#index"

  # TWITTER API Routes
  get "filtered_keyword_tweets" => "filtered_keyword_tweets#index"
  get "filtered_keyword_2_tweets" => "filtered_keyword_2_tweets#index"
  get "filtered_keyword_3_tweets" => "filtered_keyword_3_tweets#index"
  get "filtered_keyword_4_tweets" => "filtered_keyword_4_tweets#index"

