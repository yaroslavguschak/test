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



  private
    def worker_params
      params.require(:worker).permit(:worker_name, :responsibility)
    end
end
