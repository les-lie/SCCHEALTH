Rails.application.routes.draw do
  devise_for :users

  devise_scope :user do
    authenticated :user do
#     root :to => 'users#index'
      root :to => 'patients#search'
      get '/admin' => 'users#index'

      get '/sign_out' => 'users/sessions#destroy'
      #get 'userstatus' => 'users#changestatus'
      get 'userstatus/:id' => 'users#changestatus', :as => :userstatus
      get 'changepassword/:id' => 'users#changepassword', :as => :changepassword
      patch 'updatepassword/:id' => 'users#updatepassword'
#     match "/userstatus/:id" => 'users#changestatus'
      get 'home' => 'patients#index'
      get 'search' => 'patients#search'
      get 'what' => 'patients#what'
#     get 'createrecord' => 'patients#create'
      post 'saverecord' => 'patients#multisave'
      get 'allrecords' => 'patients#index'
      get 'bulkcreate' => 'patients#bulkcreate'
      get 'export' => 'patients#export'
    end

    unauthenticated :user do
      root :to => 'devise/sessions#new', as: :unauthenticated_root
    end
  end

  resources :users
  resources :patients
end
