Rails.application.routes.draw do
  Rails.application.routes.draw do
    resources :cocktails, only: [:show, :index, :new, :create] do
      resources :doses, only: [:create,:destroy]
    end
    root "cocktails#index"
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
