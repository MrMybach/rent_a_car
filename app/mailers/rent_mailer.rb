class RentMailer < ActionMailer::Base
  default from: "from@example.com"

  def car_is_waiting(rent)
    @rent = rent
    @client = Client.find(@rent.client_id)
    @car = Car.find(@rent.car_id)

    mail(from: 'biuro@rent_a_car.pl', to: @client.email, subject: 'Your car wil be waiting')
  end
end
