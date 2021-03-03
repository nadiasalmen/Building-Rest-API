class CreateOrders < ActiveRecord::Migration[6.0]
  def change
    create_table :orders do |t|
      t.float :amount
      t.string :payment_status
      t.string :order_status
      t.date :payment_date
      t.date :delivery_date
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
