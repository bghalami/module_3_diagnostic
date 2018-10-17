class EnergyService
  def conn
    Faraday.new(url: "https://developer.nrel.gov/api/alt-fuel-stations/v1")
  end

  def get_all_stations
    conn.get("?api_key=XDKiRmdoHJYDaDUXiyIwdWvWxv1OCvKa9e3Z4hon")
  end
end
