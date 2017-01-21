Rails.application.routes.draw do

  get '/', to: 'application#index'
  get '/symbols', to: 'symbols#index'

end
