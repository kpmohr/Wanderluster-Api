Rails.application.routes.draw do
  devise_for :users
  namespace :api, path: '/api'  do
    namespace :v1 do
      scope :auth do
        get 'is_signed_in', to: 'auth#is_signed_in?'
      end
    end
  end
  namespace :api, defaults: { format: :json }, path: '/api' do
    namespace :v1 do
      resources :profiles, only: [:index, :show, :create, :destroy, :update]
    end
  end
  namespace :api, defaults: { format: :json }, path: '/api' do
    namespace :v1 do
      resources :trips, only: [:index, :show, :create, :destroy, :update]
    end
  end
  namespace :api, defaults: { format: :json }, path: '/api' do
    namespace :v1 do
      resources :maps, only: [:index, :show, :create, :destroy, :update]
    end
  end
  root to: 'site#index'
end


