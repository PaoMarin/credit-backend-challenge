# Preview all emails at http://localhost:3000/rails/mailers/information_mailer
class InformationMailerPreview < ActionMailer::Preview
  def send_client_information_preview
    InformationMailer.send_client_information(client_id: 30,calculation: 200)
  end
end
