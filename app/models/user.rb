class User < ApplicationRecord
  # Direct associations

  has_many   :creditorsdebtors,
             :class_name => "Payment",
             :foreign_key => "receiver_id",
             :dependent => :destroy

  has_many   :likes,
             :dependent => :destroy

  has_many   :indebtedness,
             :class_name => "MyDebt",
             :foreign_key => "receiver_id",
             :dependent => :destroy

  has_many   :my_debts,
             :foreign_key => "initiator_id",
             :dependent => :destroy

  has_many   :comments,
             :dependent => :destroy

  has_many   :payments,
             :foreign_key => "initiator_id",
             :dependent => :destroy

  has_many   :payment_informations,
             :dependent => :destroy

  # Indirect associations

  has_many   :initiators,
             :through => :creditorsdebtors,
             :source => :initiator

  has_many   :other_ids,
             :through => :payments,
             :source => :other_id

  # Validations

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
