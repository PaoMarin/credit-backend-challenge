class InformationMailer < ApplicationMailer
  default from: "credit.challenge.app@gmail.com"

  def send_client_information(client)
    @client = client
    @mail = "paomg.9614@gmail.com"
    mail(to: @client.email, subject: 'Request Credit Information')
  end

end
