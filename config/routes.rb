Homerkr::Application.routes.draw do

  root :to => 'home#index'
  resources :students, :only => [:index, :new, :create]

end
