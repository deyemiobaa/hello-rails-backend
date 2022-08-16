Rails.application.routes.draw do
  namespace :api, default: { format: :json } do
    resources :messages, only: [:index]
  end
end
