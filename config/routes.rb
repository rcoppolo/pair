Pair::Application.routes.draw do
  
  resources :proposals, :only => [:index, :create]

  devise_for :users, :path => 'accounts'
  
  devise_scope :user do
    match "/users" => "users#index", :as => :user_root
  end
  
  resources :users do
    resources :profiles, :only => [:edit, :update, :show]  
  end
  
  devise_scope :user do
    match "/signup" => "devise/registrations#new"
    match "/signin" => "devise/sessions#new"
  end
  
  root :to => 'static_pages#home'
end
