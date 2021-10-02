class CreateTailors < ActiveRecord::Migration[5.1]
  def change
    create_table :tailors do |t|
      t.string :name
      t.string :email
      t.decimal :phone
      t.string :password
      t.string :confirm_password
      t.text :address
      t.string :shop_name
      t.string :city

      t.timestamps
    end
  end
end
