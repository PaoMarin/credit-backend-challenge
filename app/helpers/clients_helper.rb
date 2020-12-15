module ClientsHelper

  def fee_calculation(client)
    ((client.amount * 0.18) / (1 - (1-0.18) ** - client.paytime))
  end

  def biweekly_payment(calculation)
    (calculation / 2)
  end
end
