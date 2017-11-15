class CreateBeer < ActiveRecord::Migration[5.1]
  def change
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
      t.column( :created_at, :datetime)
      t.column( :updated_at, :datetime)
    end
  end
end
