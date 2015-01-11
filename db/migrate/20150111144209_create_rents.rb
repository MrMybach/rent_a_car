class CreateRents < ActiveRecord::Migration
  def change
    create_table :rents do |t|
      t.integer :client_id
      t.integer :car_id
      t.date :rent_from_date
      t.integer :number_of_days_rent
      t.integer :rental_cost
      t.timestamps
    end
  end
end
