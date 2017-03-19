class MyDebt < ApplicationRecord
  # Direct associations

  belongs_to :receiver,
             :class_name => "User"

  belongs_to :initiator,
             :class_name => "User"

  # Indirect associations

  has_one    :payment,
             :through => :initiator,
             :source => :payments

  # Validations

end
