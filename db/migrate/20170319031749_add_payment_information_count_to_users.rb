class AddPaymentInformationCountToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :payment_informations_count, :integer
  end
end
