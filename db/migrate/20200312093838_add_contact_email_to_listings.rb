class AddContactEmailToListings < ActiveRecord::Migration[6.0]
  def change
    add_column :listings, :contact_email, :string
  end
end
