class ChangeCardNumberDefaultValueInPaymentInformations < ActiveRecord::Migration[5.0]
  def change
    change_column_default :payment_informations, :card_number, '9999999999999999'
  end
end
