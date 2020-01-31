class CreateListings < ActiveRecord::Migration[6.0]
  def change
    create_table :listings do |t|
      t.string :name
      t.string :description
      t.string :address
      t.string :city
      t.integer :zipcode
      t.float :lat
      t.float :long
      t.integer :hourly_price
      t.integer :monthly_price
      t.datetime :available_start
      t.datetime :available_end

      t.timestamps
    end
  end
end
