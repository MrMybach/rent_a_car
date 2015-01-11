class AddRentStatusToCar < ActiveRecord::Migration
  def change
    add_column :cars, :rent_status, :boolean 
  end
end
