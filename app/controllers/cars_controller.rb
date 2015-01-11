class CarsController < ApplicationController

  def index
    @cars = Car.all
  end

  def new
    @car = Car.new
  end

  def create
    @car = Car.new(car_params)

    if @car.save
      redirect_to root_path
      flash[:success] = "Dodano nowy samochód"
    else
      flash[:warning] = "Coś poszło nie tak"
      render :new
    end
  end

  def edit
    @car = Car.find(params[:id])
  end

  def update
    @car = Car.find(params[:id])
    if @car.update_attributes(car_params)
      flash[:success] = "Edycja zakończona powodzeniem."
      redirect_to car_path(@car)
    else
      flash.now[:error] = "Coś poszło nie tak. Spróbuj ponownie."
      render :edit
    end
  end

  def show 
    @car = Car.find(params[:id])
  end

  def destroy
    @car = Car.find(params[:id])
  end

  private

  def car_params
    params[:car].permit(:car_brand, :car_model, :fuel_type, :num_of_seats, :price_per_day)
  end

end
