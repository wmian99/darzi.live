class CreateCustomers < ActiveRecord::Migration[5.1]
  def change
    create_table :customers do |t|
      t.string :fname
      t.string :lname
      t.string :email
      t.numeric :phone
      t.string :ppassword
      t.string :confirm_password
      t.text :address

      t.timestamps
    end
  end
end
