Spree::Core::Engine.routes.prepend do
  resources :gift_cards do
    get :activate, :on => :member
    get :preview
    get :confirm, :on => :member
  end
end
