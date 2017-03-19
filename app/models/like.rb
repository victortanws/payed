class Like < ApplicationRecord
  # Direct associations

  belongs_to :payment

  belongs_to :user,
             :counter_cache => true

  # Indirect associations

  # Validations

end
