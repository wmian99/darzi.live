class CorrectPasswordColumnNameCustomerTable < ActiveRecord::Migration[5.1]
  def change
    rename_column :customers, :ppassword, :password
  end
end
