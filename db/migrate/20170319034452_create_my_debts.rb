class CreateMyDebts < ActiveRecord::Migration
  def change
    create_table :my_debts do |t|
      t.integer :initiator_id
      t.integer :receiver_id
      t.string :current_amount

      t.timestamps

    end
  end
end
