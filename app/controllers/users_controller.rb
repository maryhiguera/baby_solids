class UsersController < ApplicationController
   def show
     if current_user
       render json: { user: current_user.as_json(except: [ :password_digest ]) }
     else
       render json: { error: "Not logged in" }, status: :unauthorized
     end
   end

  def create
    user = User.new(
      name: params[:name],
      email: params[:email],
      password: params[:password],
      password_confirmation: params[:password_confirmation]
    )
    if user.save
      render json: { message: "User created successfully" }, status: :created
    else
      render json: { errors: user.errors.full_messages }, status: :bad_request
    end
  end

  def me
    if current_user
      pp current_user
      render json: { user: current_user, admin: current_user.admin? }
    else
      render json: { error: "Not logged in" }, status: :unauthorized
    end
  end

  def dashboard_data
    if current_user
      if current_user.admin?
        food_logs = FoodLog.all
        babies = Baby.all
      else
        food_logs = current_user.food_logs
        babies = current_user.babies
      end

      render json: {
        user: current_user.as_json(except: [ :password_digest ]),
        food_logs: food_logs,
        babies: babies
      }
    else
      render json: { error: "Not logged in" }, status: :unauthorized
    end
  end
end
