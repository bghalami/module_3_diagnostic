class Search
  def initialize(zip, results_hash)
    @zip = zip
    @search_results = results_hash
  end

  def filter_by_distance
    @search_results.sort_by do |result|
      Geocoder::Calculations.distance_between([39.7312, -104.9827], [result[:latitude], result[:longitude]])
    end
  end
end
