class CreateBeerStylesBreweries < ActiveRecord::Migration[5.1]
  def change
    create_table :beer_styles_breweries do |t|
      t.column( :beer_style_id, :integer)
      t.column( :brewery_id, :integer)

    end
  end
end
