class AddContactNumberToListings < ActiveRecord::Migration[6.0]
  def change
    add_column :listings, :contact_number, :string
  end
end
