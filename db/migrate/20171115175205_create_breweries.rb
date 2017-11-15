class CreateBreweries < ActiveRecord::Migration[5.1]
  def change
    create_table :breweries do |t|
      t.column( :name, :string)
      t.column( :updated_at, :datetime)
      t.column( :created_at, :datetime)
    end
  end
end
