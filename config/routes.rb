KcwWorld::Application.routes.draw do

  resources :comments

  resources :articles do
    resources :comments
  end
  
  resources :categories
  
  resources :photos do
    resources :comments
  end
  
  resources :proverbs
  resources :comments
  
  match 'home' => 'home#index', :as => :home
  root :to => 'home#index'

end
