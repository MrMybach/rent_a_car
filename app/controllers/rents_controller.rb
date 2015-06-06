class RentsController < ApplicationController

  def index
    @rents = Rent.all
  end

  def create
    @rent = Rent.new(rent_params)
    if @rent.save
      flash[:notice] = "Samochód wypożyczony"
      redirect_to root_path
      RentMailer.car_is_waiting(@rent).deliver!
    else
      flash[:notice] = "Nie można wypożyczyć tego samochódu"
      redirect_to root_path
    end
  end

  private

  def rent_params
    params[:rent].permit(:car_id, :client_id, :rent_from_date, :number_of_days_rent)
  end

end
