require 'pry'
class Result
  def initialize(attributes = {})
   @name          = attributes[:station_name]
   @address       = (attributes[:street_address] + ", " + attributes[:zip]
   @fuel_type     = fuel_type_conversion[attributes[:fuel_type_code]]
   @location      = attributes[:latitude], attributes[:longitude]
   @access_times  = attributes[:access_days_time].to_i
  end

  def fuel_type_conversion
   { ELEC: "Electric", LPG: "Propane" }
  end
end
