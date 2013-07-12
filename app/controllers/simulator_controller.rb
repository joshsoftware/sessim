class SimulatorController < ApplicationController

  before_filter do
    @placeholder = { 'dispense'=>
      [
        {'project_id'=>'0001', 'user_id'=>'E-1', 'plc_id'=>'0002', 'dispenser_id'=>'0002', 'quantity'=>'10', 'timestamp' => Time.now.to_i},
        {'project_id'=>'0001', 'user_id'=>'E-2', 'plc_id'=>'0002', 'dispenser_id'=>'0002', 'quantity'=>'10', 'timestamp' => Time.now.to_i}
      ]
    }
  end

  def index
  end

  def dispenser_sync
    @data = params[:dispense]
    unless @data.blank?
      @data = JSON.parse(@data) 
      @result = ImsClient.dispenser_sync(@data)
      @data = @data.to_json 
    else
      @message = 'Fill json data in text area'
    end


    render :action => :index
  end

  def plc_sync
    @result = ImsClient.plc_sync
    render :action => :plc_sync
  end

  def dispensers
    render :action => :index
  end

end
