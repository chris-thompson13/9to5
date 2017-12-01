class JobsController < ApplicationController
  def index
    current_user
    @jobs = Job.all
  end

  def show
    @job = Job.find_by_id(params[:id])

  end

  def new
    @job = Job.new(params[:id])
  end

  def create
    @job = current_user.boats.jobs.new(job_params)
    if @job.save
      redirect_to root_path
    else
      render 'new'
    end
  end

  def edit
    find_params
  end

  def update
    @job = Job.find(params[:id])
    if @job.update(job_params)
      redirect_to job_path
    else
      render 'edit'
    end
  end

  def destroy
    @job = Job.find(params[:id])
    @job.destroy
      redirect_to root_path
  end

  private
  def job_params
    params.require(:job).permit(:name, :location, :amount, :avatar)
  end



    def find_params
    	@boat = Boat.find(params[:id])

  end

  end
