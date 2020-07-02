Rails.application.routes.draw do
  get 'spells/index'
  root to: "spells#index"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
