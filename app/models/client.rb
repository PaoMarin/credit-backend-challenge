class Client < ApplicationRecord

   validates :name, :email, :totalIngress, :sector, :workYears, :amount, presence: true

   validates :amount, numericality:  {only_integer: true, greater_than_or_equal_to: 100, less_than_or_equal_to: 2000, message: 'must be number a between 100 & 2000'}


end
