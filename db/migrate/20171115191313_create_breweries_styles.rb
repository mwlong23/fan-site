class CreateBreweriesStyles < ActiveRecord::Migration[5.1]
  def change
    create_table :breweries_styles do |t|
      t.column( :brewery_id, :integer)
      t.column( :style_id, :integer)
    end
  end
end
