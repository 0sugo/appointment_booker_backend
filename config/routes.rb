Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      devise_for :users, controllers: {
        registrations: 'api/v1/registrations',
        sessions: 'api/v1/sessions'
      }
      resources :users do
        resources :reservations, only: %i[index create destroy]
      end
      resources :doctors, only: [:index, :show, :create, :destroy]
    end
  end
end
