class CreateCars < ActiveRecord::Migration
  def change
    create_table :cars do |t|
      t.string :car_brand
      t.string :car_model
      t.string :fuel_type
      t.integer :num_of_seats
      t.integer :price_per_day

      t.timestamps
    end
  end
end
