class LiveStreamEchosController < ApplicationController
  def index
    require "json"
    lines = File.open("out.txt").read.split("}\n").join("},")+"}"
    data = JSON.parse([lines].to_s)
    render json: data
  end
  
end
