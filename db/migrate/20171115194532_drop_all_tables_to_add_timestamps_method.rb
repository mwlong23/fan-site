class DropAllTablesToAddTimestampsMethod < ActiveRecord::Migration[5.1]
  def change
    drop_table :beer_styles
    drop_table :breweries
    drop_table :beers
  end
end
