Danceschool::Application.routes.draw do
  root to: "courses#index"
  resources :users, only: [:index, :show]
  resources :courses, only: [:index, :show]
end
