class AddParkingTypeToListings < ActiveRecord::Migration[6.0]
  def change
    add_column :listings, :parking_type, :string
  end
end
