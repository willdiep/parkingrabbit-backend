class AddListingImageToListings < ActiveRecord::Migration[6.0]
  def change
    add_column :listings, :listing_image, :string
  end
end
