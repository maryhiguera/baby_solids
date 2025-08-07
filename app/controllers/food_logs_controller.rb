class FoodLogsController < ApplicationController
  def index
    @food_logs = FoodLog.all
    render json: @food_logs
  end

  def show
    @food_log = FoodLog.find(params[:id])
    render json: @food_log
  end

  def create
    @food_log = FoodLog.create(
      baby_id: params[:baby_id],
      food_id: params[:food_id],
      reaction: params[:reaction],
      notes: params[:notes]
    )

    if @food_log.valid?
      render json: @food_log
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
      render json: @food_log
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
