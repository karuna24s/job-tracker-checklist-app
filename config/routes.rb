Rails.application.routes.draw do


  devise_for :users
  root 'application#hello'
  resources :jobs do
    resources :checklists
  end

  resources :checklists do
    resources :items
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
