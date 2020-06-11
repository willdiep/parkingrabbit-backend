class AddFeaturesToListings < ActiveRecord::Migration[6.0]
  def change
    add_column :listings, :features, :string, array: true, default: []
  end
end
