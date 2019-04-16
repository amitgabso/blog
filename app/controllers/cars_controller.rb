class CarsController < ApplicationController

  before_action :authenticate_user!

  def index
    @cars = Car.all
  end

  def new
    if current_user.is_admin
      @car = current_user.cars.build
    else
      flash[:notice] = 'Unauthorized: Not an admin'
      redirect_to cars_path
    end

  end

  def create
    @car = current_user.cars.build(car_params)

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
