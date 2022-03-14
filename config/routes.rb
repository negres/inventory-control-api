Rails.application.routes.draw do
  defaults format: :json do
    resources :products, only: %i[show index]
  end
end
