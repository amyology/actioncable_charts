class VisitsController < ApplicationController
  def index
    @visits = Visit.all
    @data = Visit.chart_data
    render json: @data
  end

  def create
    ip = request.remote_ip
    location = Geocoder.search(ip).first

    Visit.create(
      ip: ip,
      country: location.country,
      city: location.city,
      state: location.state,
      postal_code: location.postal_code
    )
  end
end
