Rails.application.routes.draw do

  resources :items
  root 'application#hello'
  resources :users
  resources :jobs do
    resources :checklists
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
