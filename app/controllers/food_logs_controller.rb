class FoodLogsController < ApplicationController
  before_action :authenticate_user
  def index
    puts current_user
    @food_logs = current_user.food_logs
    render :index
  end

  def show
    @food_log = FoodLog.find(params[:id])
    render :show
  end

  def create
    @food_log = FoodLog.create(
      baby_id: params[:baby_id],
      food_id: params[:food_id],
      reaction: params[:reaction],
      notes: params[:notes],
      user_id: current_user.id
    )

    if @food_log.valid?
      render :show
    else
      render json: { errors: @food_log.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def update
    @food_log = FoodLog.find(params[:id])

    @food_log.update(
      baby_id: params[:baby_id] || @food_log.baby_id,
      food_id: params[:food_id] || @food_log.food_id,
      reaction: params[:reaction] || @food_log.reaction,
      notes: params[:notes] || @food_log.notes
    )

    if @food_log.valid?
      render :show
    else
      render json: { errors: @food_log.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def destroy
    @food_log = FoodLog.find(params[:id])
    @food_log.destroy
    render json: { message: "Food log deleted" }
  end
end
