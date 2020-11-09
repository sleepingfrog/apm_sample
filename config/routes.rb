require 'sidekiq/web'

Rails.application.routes.draw do
  root 'posts#index'
  resources :posts do
    collection do
      get :error
      get :heavy
      get :sometime_heavy
      get :enqueue_job
    end
  end

  if Rails.env.development?
    mount Sidekiq::Web, at: '/sidekiq'
  end
end
