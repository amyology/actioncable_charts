Rails.application.routes.draw do

  root to: 'rooms#show'
  mount ActionCable.server => '/cable'

  get '/rooms' => 'rooms#show'

  get '/messages' => 'messages#index'
  post '/messages' => 'messages#create'

  get '/polls' => 'polls#index'
  get '/polls/:id' => 'polls#show'

  post '/votes' => 'votes#create'

  get '/charts' => 'charts#index'
  get '/charts/countries' => 'charts#countries'

  get '/visits' => 'visits#index'
  post '/visits' => 'visits#create'

end
