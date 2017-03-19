class PaymentInformation < ApplicationRecord
  # Direct associations

  belongs_to :user,
             :counter_cache => true

  # Indirect associations

  # Validations

  validates :cvv, :uniqueness => true

  validates :cvv, :presence => true

  validates :cvv, :numericality => true

  validates :cvv, :length => { :minimum => 3, :maximum => 3 }

end
