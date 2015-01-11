class Car < ActiveRecord::Base
  
  validates :car_brand, presence: true,
                        length: { in: 3..30 }
  validates :car_model, presence: true,
                        length: { in: 1..30 }
  validates :fuel_type, presence: true,
                        length: { in: 1..30 }
  validates :num_of_seats,  presence: true,
                            numericality: { greater_than_or_equal_to: 2, less_than_or_equal_to: 7 }
  validates :price_per_day, presence: true

end
