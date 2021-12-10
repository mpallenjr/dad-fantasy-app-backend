class HoopDoctorsNewsController < ApplicationController
    #Controller for RSS Feed from Hoop Doctors.  This is for NBA specifically.  Running on backend to avoid CORS issues.

  def index
    response = HTTP.get("http://thehoopdoctors.com/feed/")
    render json: response.to_s
  end
end
