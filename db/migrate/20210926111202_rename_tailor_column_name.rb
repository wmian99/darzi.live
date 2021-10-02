class RenameTailorColumnName < ActiveRecord::Migration[5.2]
  def change
    rename_column :tailors, :address, :shop_address
  end
end
