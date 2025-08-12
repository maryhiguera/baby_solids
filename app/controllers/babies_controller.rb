class BabiesController < ApplicationController
  def index
    @babies = Baby.all
    render :index
  end

  def show
    @baby = Baby.find(params[:id])
    render :show
  end

  def create
    @baby = Baby.create(
      name: params["name"],
      birthdate: params["birthdate"],
      user_id: current_user.id
    )

    if @baby.valid?
      render json: @baby
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
      render json: @baby
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
