class User < ApplicationRecord
  has_many :search_historyies
  has_many :setting_Informations, through: :search_historyies
end
