class SearchHistory < ApplicationRecord
  belongs_to :region
  has_many :setting_Informations, through: :users
  has_many :users
end
