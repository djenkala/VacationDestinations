class User < ApplicationRecord
  has_many :visits
  has_many :destinations, through: :visits, source: :destination
end
