Danceschool::Application.routes.draw do
  devise_for :users

  root to: "courses#index"
  resources :users, only: [:index, :show]
  resources :courses, only: [:index, :show]
end
