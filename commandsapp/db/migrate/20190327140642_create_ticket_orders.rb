class CreateTicketOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :ticket_orders do |t|
      t.integer :user_id
      t.integer :ticket_type_id
      t.integer :total

      t.timestamps
    end
  end
end
