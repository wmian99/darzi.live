class ChangeTypeColumnToCategory < ActiveRecord::Migration[5.1]
  def change
    rename_column :orders, :type , :category
  end
end
