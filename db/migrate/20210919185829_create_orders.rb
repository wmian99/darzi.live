class CreateOrders < ActiveRecord::Migration[5.1]
  def change
    create_table :orders do |t|
      t.string :type
      t.text :notes
      t.references :customer, foreign_key: true
      t.references :tailor, foreign_key: true

      t.timestamps
    end
  end
end
