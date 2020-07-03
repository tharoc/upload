Rails.application.routes.draw do
  root to: "spells#index"
  get 'home/contact'
  get 'home/about'
  get 'home/home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
