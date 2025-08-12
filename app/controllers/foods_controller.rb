class FoodsController < ApplicationController
  before_action :authenticate_admin, except: [ :index, :show ]
  def index
    @foods = Food.all
    render :index
  end

  def show
    @food = Food.find(params[:id])
    render :show
  end

  def create
    @food = Food.create(
      name: params["name"],
      category: params["type"],
      image_url: params["image_url"],
      min_age_months: params["min_age_months"].to_i,
      texture: params["texture"],
      ingredients: params["ingredients"],
      instructions: params["instructions"],
      is_allergen: params["is_allergen"]
    )

    if @food.valid?
      render :show
    else
      render json: { errors: @food.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def update
    @food = Food.find(params[:id])

    @food.update(
      name: params["name"] || @food.name,
      category: params["type"] || @food.type,
      image_url: params["image_url"] || @food.image_url,
      min_age_months: params.key?(:min_age_months) ? params[:min_age_months] : @food.min_age_months,
      texture: params["texture"] || @food.texture,
      ingredients:  params[:ingredients].split(",") || @food.ingredients,
      instructions: params["instructions"] || @food.instructions,
      is_allergen: params["is_allergen"] || @food.is_allergen
    )

    if @food.valid?
      render :show
    else
      render json: { errors: @food.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def destroy
    @food = Food.find(params[:id])
    @food.destroy
    render json: { message: "Food deleted" }
  end
end
