class LiveStreamEchosController < ApplicationController
 
  # Controller used to open the text output and render that data in JSON to be picked up by the front end on call.  Changes very quickly, does not store data. 

  def index
    require "json"
    lines = File.open("out.txt").read
    data = JSON.parse([lines].to_s)
    render json: data[0]
  end
end
