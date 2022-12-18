Rails.application.routes.draw do
  root "root#index"

  resources :questions, only: [:index, :show]

  namespace :admin do
    resources :inquiries, only: [:index, :edit]
  end
end
