Rails.application.routes.draw do
  namespace :api do
    devise_for :users, controllers: {
      registrations: 'api/registrations',
      sessions: 'api/sessions'
    }
  end
end
