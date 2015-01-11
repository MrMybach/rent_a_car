class Client < ActiveRecord::Base

  validates :first_name,   presence: true, length: { minimum: 3, maximum: 50 }
  validates :last_name,    presence: true, length: { minimum: 3, maximum: 50 }
  validates :email,        format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i, on: :create }
  validates :telephone,    presence: true, length: { minimum: 3, maximum: 140 }

end
