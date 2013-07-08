class Dispenser
  attr_accessor :dispenser_id, :project_id, :plc_id, :user_id, :quantity, :timestamp

  def initialize(attrs = {})
    attrs.each do |f,v|
      instance_variable_set("@#{f}", v)
    end
  end

  def to_json
    {
      :project_id => project_id,
      :user_id => user_id,
      :plc_id => plc_id,
      :dispenser_id => dispenser_id,
      :quantity => quantity,
      :timestamp => Time.now.to_i
    }
  end

end
