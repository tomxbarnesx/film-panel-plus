Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: "courses#index"

  resources :students
  resources :instructors
  resources :admins

  resources :courses

  resources :cohorts do
    resources :enrollments
  end
end
