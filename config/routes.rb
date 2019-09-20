Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :cocktails, except: [:destroy, :edit, :update] do
    resources :doses, except: [:edit, :update, :destroy]
  end
    resources :doses, only: [:destroy]
end


