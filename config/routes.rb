Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
	get "/awesome", to: "home#awesome"
	get "/freebie", to: "home#freebie"

	get "/login", to: "sessions#new"
	post "/login", to: "sessions#create"
	delete "/logout", to: "sessions#destroy"
	resources :users
end
