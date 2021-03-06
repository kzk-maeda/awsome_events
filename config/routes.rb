Rails.application.routes.draw do
  resources :events
  root 'welcome#index'
  get 'welcome/index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get '/auth/:provider/callback' => 'sessions#create'
  delete '/logout' => 'sessions#destroy'

  resources :events do
    resources :tickets
  end
end
