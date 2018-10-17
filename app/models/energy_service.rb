class EnergyService
  def conn
  Faraday.new(url: "https://api.propublica.org") do |faraday|
    faraday.headers["X-API-KEY"] = "S9JON3ruNOI6XiyymcnZ7gtsjnToPxuXyT0bgeaX"
    faraday.adapter Faraday.default_adapter
  end

end


?api_key=XDKiRmdoHJYDaDUXiyIwdWvWxv1OCvKa9e3Z4hon
