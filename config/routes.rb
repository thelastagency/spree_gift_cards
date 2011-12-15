Rails.application.routes.draw do
  resources :gift_cards do
    get :activate, :on => :member
    get :preview
    get :confirm
  end
end
