class CarsController < ApplicationController

  def index
    @cars = Car.all
  end

  def new
    @car = current_user.cars.build
  end

  def create
    @car = current_user.cars.build(car_params)
    #@car.user = current_user

    @car.save
    redirect_to @car
  end

  def show
    @car = Car.find(params[:id])
  end


  private
    def car_params
      params.require(:car).permit(:title, :descreption, :created_at, :image)
    end


end
