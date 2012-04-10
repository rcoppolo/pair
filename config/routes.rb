Pair::Application.routes.draw do
  devise_for :users
  
  devise_scope :user do
    match "/signup" => "devise/registrations#new"
    match "/signin" => "devise/sessions#new"
  end
  
  root :to => 'static_pages#home'
end
