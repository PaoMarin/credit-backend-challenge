class InformationMailer < ApplicationMailer
  default from: "credit.challenge.app@gmail.com"

  def send_client_information(params)
    client_id = params[:client_id]
    @calculation = params[:calculation]
    @client = Client.find(client_id)
    email = ENV.fetch("EMAIL_BASE")
    mail(to: email, subject: 'Request Credit Information')
  end

end
