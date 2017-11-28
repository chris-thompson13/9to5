class BoatsController < ApplicationController
  #
  before_action :authenticate_user!

  def index
    @boats = Boat.all
  end

  def show
    @boat = Boat.find(params[:id])
  end

  def new
    @boat = Boat.new
  end

  def create
    @boat = current_user.boats.new(boats_params)
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


  end
