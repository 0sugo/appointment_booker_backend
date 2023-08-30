Rails.application.routes.draw do
  mount Rswag::Ui::Engine => '/api-docs'
  mount Rswag::Api::Engine => '/api-docs'
  namespace :api do
    namespace :v1 do
      devise_for :users, controllers: {
        registrations: 'api/v1/registrations',
        sessions: 'api/v1/sessions'
      }
      resources :users do
        resources :reservations, only: %i[index create destroy]
      end
      resources :doctors, only: [:index, :show, :new, :create]
    end
  end
end
