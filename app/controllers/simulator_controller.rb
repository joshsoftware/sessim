class SimulatorController < ApplicationController
  def index
    @dispenser = Dispenser.new
  end

  def dispenser_sync
    @dispenser = Dispenser.new(params[:dispense]) 

    data = {
      :dispense => [
        @dispenser.to_json
      ]
    }

    @result = ImsClient.dispenser_sync(data)

    render :action => :index
  end

  def dispensers
  end

  def dispense
  end

  def sync_plc
  end
end
