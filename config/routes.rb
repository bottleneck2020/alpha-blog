Rails.application.routes.draw do 

	root 'pages#homepage'
	#get 'pages/homepage', to: 'pages#homepage'
	get 'about', to: 'pages#about'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
