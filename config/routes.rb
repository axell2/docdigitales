Rails.application.routes.draw do
 
  resources :customers,only:[:create,:new,:edit,:update]
  devise_for :users, controllers: {
        registrations: 'users/registrations'
      }
  authenticated :user do 
    root to: "welcome#home",as: :authenticated
  end
  unauthenticated :user do 
    root to: "welcome#unregistered", as: :unauthenticated
  end
end
