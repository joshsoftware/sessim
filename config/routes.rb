ImsSimulator::Application.routes.draw do
  root :to => 'simulator#index'

  get '/dispensers' => 'simulator#dispensers', :as => :dispensers 
  post '/dispenser_sync' => 'simulator#dispenser_sync', :as => :dispenser_sync

  get '/plc_sync' => 'simulator#plc_sync', :as => :plc_sync

end
