class JobsController < ApplicationController
  def index
    current_user
    @jobs = Job.all

  end

  def show
    @job = Job.find_by_id(params[:id])
    boat_params
    @boats = Boat.all
    @jobs = Job.all


  end

  def new
    #@job = Job.new(params[:id])
    @boat = Boat.find_by_id(params[:id])
  end

  def create
      #current_user
     @job = current_user.jobs.new(job_params)
     #@boat = Boat.find_by_id(params[:id])
     @job.user_id = current_user.id
     @job.boat_ids = current_user.id
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
  def boat_params
    params.permit(:name, :location, :amount, :avatar, :job_id, :boat_id, current_user.id)
  end

  def job_params
    params.require(:job).permit(:name, :user_id, :description, :origin, :destination, :cost, :amount, :boat_id, current_user.id, :job_id, :job_ids)
  end

  def find_boat
    @boat = Boat.find_by_id(params[:boat_id])
  end


    def find_params
    	@job = Job.find_by_id(params[:id])

  end

  end
