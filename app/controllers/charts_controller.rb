class ChartsController < ApplicationController

  def index
    @countries = Visit.country_names
  end

end
