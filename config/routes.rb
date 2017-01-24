Rails.application.routes.draw do
	resources :boots
	root 'boots#index'
end
