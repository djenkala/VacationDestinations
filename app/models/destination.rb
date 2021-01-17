class Destination < ApplicationRecord
  has_many :visits
  has_many :users, through: :visits, source: :user
end
