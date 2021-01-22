class User < ApplicationRecord
  has_many :destinations
  has_many :visits, through: :destinations
  has_secure_password
end
