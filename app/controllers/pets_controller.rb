class PetsController < ApplicationController
  before_action :authenticate_user!

  def new
    @pet = Pet.new
    @user = User.find(params[:user_id])
  end

  def create
    @pet = Pet.new(pet_params)
    @user = current_user || User.find(params[:user_id])

    @pet.user = @user

    if @pet.save!
      redirect_to account_path
    else
      render :new
    end
  end

  def fetch
    render :json => Pet.all
  end

  private

  def pet_params
    params.require(:pet).permit([:name, :pet_type, :image, :breed])
  end
end
