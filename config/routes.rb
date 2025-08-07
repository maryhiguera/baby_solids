Rails.application.routes.draw do
  get "/babies" => "babies#index"
  get "/babies/:id" => "babies#show"
  post "/babies" => "babies#create"
  patch "/babies/:id" => "babies#update"
  delete "/babies/:id" => "babies#destroy"

  get "/foods" => "foods#index"
  get "/foods/:id" => "foods#show"
  post "/foods" => "foods#create"
  patch "/foods/:id" => "foods#update"
  delete "/foods/:id" => "foods#destroy"

  get "/food_logs" => "food_logs#index"
  get "/food_logs/:id" => "food_logs#show"
  post "/food_logs" => "food_logs#create"
  patch "/food_logs/:id" => "food_logs#update"
  delete "/food_logs/:id" => "food_logs#destroy"
end
