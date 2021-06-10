Rails.application.routes.draw do

  root to: 'dice#new'
  post '/compute' , to: 'dice#compute'

end
