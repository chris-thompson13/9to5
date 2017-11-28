class BoatsController < ApplicationController

  before_action :authenticate_user!

  def index
    @boats = Boat.all
  end

  def show
    @boats = Boat.find(params[:id])
  end

  def new
    @boats = Boat.new
  end

  def create
    @boats = current_user.boats.new(boats_params)

  end

  def edit
    find_params
  end

  def update

  end

  def destroy
    @boats = Boats.find(params[:id])
    @boats.destroy
      redirect_to root_path
  end


  end
