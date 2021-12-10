Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  # Web Request Routes for the NEWS API
  get "/nfl_news" => "nfl_news#index"
  get "/nba_news" => "nba_news#index"

  # Web Request Routes for Rotowire RSS Feed
  get "rotowire_nfl_news" => "rotowire_nfl_news#index"
  get "rotowire_nba_news" => "rotowire_nba_news#index"
  get "rotowire_news" => "rotowire_news#index"

  
end
