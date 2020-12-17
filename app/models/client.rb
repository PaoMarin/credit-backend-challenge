class Client < ApplicationRecord

   validates :name, :email, :totalIngress, :sector, :workYears, :amount, presence: true

   validates :amount, numericality:  {only_integer: true, greater_than_or_equal_to: 100, less_than_or_equal_to: 2000, message: 'must be number a between 100 & 2000'}

   # Method calculate loan amount per month
   def self.fee_calculation(client)
      @calculation = ((client.amount * 0.18) / (1 - (1 + 0.18) ** - client.paytime))
   end

   # Method of dividing the payment amount in case of being biweekly
   def self.biweekly_payment(calculation)
      @calculation =  (calculation / 2)
   end
end
