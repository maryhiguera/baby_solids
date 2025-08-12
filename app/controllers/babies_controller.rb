class BabiesController < ApplicationController
  before_action :authenticate_user
  def index
    @babies = current_user.babies
    render :index
  end

  def show
    @baby = Baby.find(params[:id])
    render :show
  end

  def create
    @baby = current_user.babies.create(
      name: params["name"],
      birthdate: params["birthdate"],
      user_id: current_user.id
    )

    if @baby.valid?
      render :show
    else
      render json: { errors: @baby.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def update
    @baby = Baby.find(params[:id])
    @baby.update(
      name: params["name"] || @baby.name,
      birthdate: params["birthdate"].to_date || @baby.birthdate
    )

    if @baby.valid?
      render :show
    else
      render json: { errors: @baby.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def destroy
    @baby = Baby.find(params[:id])
    @baby.destroy
    render json: { message: "Baby deleted" }
  end
end
