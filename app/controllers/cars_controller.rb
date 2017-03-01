class CarsController < ApplicationController
  def index
    @car = Car.all
  end

  def new
    @car = Car.new
  end

  def show
    @car = Car.find(params[:id])
  end

  def create
    @car = Car.new(car_params)

    if @car.save
        redirect_to @car
      else
        render 'new'
      end
  end

  def edit
    @car = Car.find(params[:id])
  end

  def update
    @car = Car.find(params[:car_id].to_s)

    if @car.update(car_params)
      redirect_to @car
    else
      render 'edit'
    end
  end



  def destroy
    @car = Car.find(params[:id])
    @car.destroy

    redirect_to cars_path
  end

  private
    def car_params
      params.require(:car).permit(:model, :plate)
    end
end
