class PaymentInformation < ApplicationRecord
  # Direct associations

  # Indirect associations

  # Validations

  validates :cvv, :uniqueness => true

  validates :cvv, :presence => true

  validates :cvv, :numericality => true

  validates :cvv, :length => { :minimum => 3, :maximum => 3 }

end
