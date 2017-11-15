class CreateBeerStyles < ActiveRecord::Migration[5.1]
  def change
    create_table :beer_styles do |t|
      t.column( :style, :string)
      t.column( :country_of_origin, :string)
      t.column( :description, :string)
      t.column( :updated_at, :datetime)
      t.column( :created_at, :datetime)
    end
  end
end
