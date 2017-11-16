class ReCreateTablesWithTimestamps < ActiveRecord::Migration[5.1]
  def change
    create_table :breweries do |t|
      t.column( :name, :string)
      t.timestamps()
    end

    create_table :beer_styles do |t|
      t.column( :style, :string)
      t.column( :country_of_origin, :string)
      t.column( :description, :string)
      t.timestamps()
    end
    create_table :beers do |t|
      t.column( :name, :string)
      t.column( :alcohol_content, :float)
      t.column( :ibu, :integer)
      t.column( :blg, :float)
      t.column( :hops, :string)
      t.column( :yeast, :string)
      t.column( :malt, :string)
      t.column( :bio, :string)
      t.column( :style_id, :integer)
      t.timestamps()
    end


  end
end
