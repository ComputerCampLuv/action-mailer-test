Rails.application.routes.draw do
  resources :users
  get 'welcome/index'

  resources :pirate_mails do
    member do
      post :resend
    end
  end
  
  root 'welcome#index'
end