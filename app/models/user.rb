class User < ApplicationRecord
  has_many :visits
  has_many :destinations, through: :visits, source: :destination
  has_secure_password
end
