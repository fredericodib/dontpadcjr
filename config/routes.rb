Rails.application.routes.draw do

	root 'pages#home'
	get '/:params1(/:params2)(/:params3)(/:params4)(/:params5)' => 'texts#show'
	resources :texts, only: [:update]
	
mount ActionCable.server => '/cable'
end
