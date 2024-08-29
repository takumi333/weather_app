class Region < ApplicationRecord
  has_many :search_historys
  has_many :weather_data
end
