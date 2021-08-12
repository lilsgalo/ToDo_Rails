Rails.application.routes.draw do
  resources :todos, only: [:new, :create, :destroy, :edit, :update, :show]
  
  root to: "todos#index"
end
