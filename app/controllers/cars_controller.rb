class CarsController < ApplicationController

  def index
    @cars = Car.all
  end

  def new
    @car = Car.new
  end

  def create
    @car = Car.create(car_params)

    if @car.save
      redirect_to root_path
      flash[:success] = "Dodano nowy samochód"
    else
      flash[:warning] = "Coś poszło nie tak"
      render :new
    end
  end

  private

  def car_params
    params[:car].permit(:car_brand, :car_model, :fuel_type, :num_of_seats, :price_per_day)
  end

end
