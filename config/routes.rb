Rails.application.routes.draw do
  resources :photos
  devise_for :users, controllers: {
        registrations: 'users/registrations'
      }
  get 'welcome/index'
  root 'welcome#index'
  get 'myphotos' => 'photos#myphotos'
  get 'photosof/:user_id' => 'photos#photosof', :as => "photosof"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
