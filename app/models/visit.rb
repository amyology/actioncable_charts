class Visit < ApplicationRecord
  def self.chart_data
    data = []
    self.countries.each do |country|
      # data << {"name": country, "data": [self.country_count(country)]}
      data << self.country_count(country)
    end
    data
  end

  def self.country_names
    array = []
    self.countries.each do |country|
      array << country
    end
    array
  end

  private

  def self.countries
    pluck(:country).uniq
  end

  def self.country_count(country)
    where(country: country).count
  end
end
