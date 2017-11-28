class BoatsController < ApplicationController
  #
  before_action :authenticate_user!

  def index
    @boats = Boat.all
  end

  def show
    @boat = Boat.find_by_id(params[:id])
  end

  def new
    @boat = Boat.new
  end

  def create
    @boat = User.boats.create(boat_params)
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

  end

  def destroy
    @boat = Boats.find(params[:id])
    @boat.destroy
      redirect_to root_path
  end

  private
  def boat_params
    params.require(:boat).permit(:name, :location, :amount)
  end


  end
