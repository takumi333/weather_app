class WeatherData < ApplicationRecord
  belongs_to :region
  belongs_to :search_history
end
