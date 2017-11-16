class RenameBeerStylesTable < ActiveRecord::Migration[5.1]
  def change
    rename_table :beer_styles, :styles
  end
end
