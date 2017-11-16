class RenameStyleColumnToStyleName < ActiveRecord::Migration[5.1]
  def change
    rename_column :styles, :style, :style_name
  end
end
