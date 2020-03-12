class AddContactNameToListings < ActiveRecord::Migration[6.0]
  def change
    add_column :listings, :contact_name, :string
  end
end
