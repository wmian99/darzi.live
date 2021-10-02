class RenameTailorColumn < ActiveRecord::Migration[5.2]
  def change
    rename_column :tailors, :shop_address, :address
  end
end
