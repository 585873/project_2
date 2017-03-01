Rails.application.routes.draw do
  devise_for :users
  root "instructors#index"
  resources :instructors
  resources :students
end
