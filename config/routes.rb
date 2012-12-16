Cutepets::Application.routes.draw do
  resources :pets ,only: [:index,:show,:new,:create] do
    resources :comments ,only: [:new,:create]
    resources :votes ,only: [:update]
  end

  resources :users , only: [:new,:create] 
  resources :sessions , only: [:new,:create,:delete] 

  get 'register' => 'users#new', as: 'register'
  get 'login' => 'sessions#new', as: 'login'
  get 'logout' => 'sessions#delete', as: 'logout'

  root :to => 'Pets#index'

end
