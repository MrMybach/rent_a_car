class Car < ActiveRecord::Base

  validates :car_brand, presence: true
  validates :car_model, presence: true
  validates :fuel_type, presence: true
  validates :num_of_seats, presence: true
  validates :price_per_day, presence: true

end
