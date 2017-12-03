class BoatsController < ApplicationController
    before_action :authenticate_user!

  def index
    current_user
    @boats = Boat.all
  end

  def show
    @boat = Boat.find_by_id(params[:id])
    @jobs = Job.all

  end

  def new
    @boat = Boat.new(params[:id])
  end

  def create
    @boat = current_user.boats.new(boat_params)
    @boat.user_id = current_user.id
    if @boat.save
      redirect_to root_path
    else
      render 'new'
    end
  end

  def edit
    find_params
  end

  def update
    @boat = Boat.find(params[:id])
    if @boat.update(boat_params)
      redirect_to boat_path
    else
      render 'edit'
    end
  end

  def destroy
    @boat = Boat.find(params[:id])
    @boat.destroy
      redirect_to root_path
  end

  private
  def boat_params
    params.require(:boat).permit(:name, :location, :amount, :avatar, :job_id, :boat_id, current_user.id)
  end

  def job_params
    params.permit(:description, :origin, :destination, :cost, :amount, :boat_id, current_user.id, :job_id, :job_ids)
  end


    def find_params
    	@boat = Boat.find(params[:id])

  end

  end
