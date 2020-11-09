Rails.application.routes.draw do
  root 'posts#index'
  resources :posts do
    collection do
      get :error
      get :heavy
    end
  end
end
