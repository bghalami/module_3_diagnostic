class EnergyService
  def conn
    Faraday.new(url: "https://developer.nrel.gov/api/alt-fuel-stations/v1.json")
  end

  def get_all_stations
    JSON.parse(all_station_JSON.body, symbolize_names: true)[:fuel_stations]
  end

  def all_station_JSON
    conn.get("?api_key=XDKiRmdoHJYDaDUXiyIwdWvWxv1OCvKa9e3Z4hon")
  end
end
