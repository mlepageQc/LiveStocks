Rails.application.routes.draw do

  get '/', to: 'application#index'
  get '/symbols/:id', to: 'symbols#show'

end
