class DropBeerStylesBreweries < ActiveRecord::Migration[5.1]
  def change
    drop_table :beer_styles_breweries
  end
end
