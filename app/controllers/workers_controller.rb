class WorkersController < ApplicationController
  def create
    @department = Department.find(params[:department_id])
    @worker = @department.workers.create(worker_params)
    redirect_to department_path(@department)
  end

  def destroy
    @department = Department.find(params[:department_id])
    @worker = @department.workers.find(params[:id])
    @worker.destroy
    redirect_to department_path(@department)
  end

  def edit
      @worker = Worker.find(params[:id])
      puts (@worker.worker_name)
      @cars   = Car.all
  end

  def update
    @worker = Worker.find(params[:id])


    if @worker.update(worker_params)
      @department = Department.find(params[:department_id])
      redirect_to department_path(@department)
    else
      render 'edit'
    end
  end




  private
    def worker_params
      params.require(:worker).permit(:worker_name, :responsibility, car_ids:[])
    end
end
