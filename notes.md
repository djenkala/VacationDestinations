Vacation App

Destination
  has_many :visits
  name
  content

User
  has_many :visits
  has_many :destinations, through: :visits, source: :destination
  email
  username
  password_digest

Visit * join table joining users & destinations
  belongs_to :user
  belongs_to :destination
