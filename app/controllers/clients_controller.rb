class ClientsController < ApplicationController
  # GET /clients
  def index
    @clients = Client.all
    render json: @clients
  end

  # POST /clients
  def create
    @client = Client.new(client_params)
    if @client.save
      @result = Client.fee_calculation(@client)
      if(@client.frecuency == 2)
        @result = Client.biweekly_payment(@result)
      end
      # Round the amount of the couta
      @calculation = @result.round(2)
      # Send email with client information
      InformationMailer.send_client_information(client_id: @client.id, calculation: @calculation).deliver_now
      render json: {
        "status": "success",
        "code": 200,
        "message": "The client would pay a couta of:",
        "data": [
          {
            "amount": @client.amount,
            "text": @calculation,
            "frecuency": @client.frecuency,
            "payTime": @client.paytime,
          }
        ]
      }
    else
      render json: @client.errors
    end
  end

  private
  # Only allow a trusted parameter "white list" through.
  def client_params
    params.require(:client).permit(:name, :email, :totalIngress, :sector, :workYears, :amount, :frecuency, :paytime)
  end
end
