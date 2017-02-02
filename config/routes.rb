Rails.application.routes.draw do


  root 'application#hello'
  resources :users
  resources :jobs do
    resources :checklists
  end

  resources :checklists do
    resources :items
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
