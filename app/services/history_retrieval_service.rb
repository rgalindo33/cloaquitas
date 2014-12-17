class HistoryRetrievalService
  attr_accessor :buoy_data
  
  def initialize
    @buoy_data = PontDelPetroli.all
  end

  def matched_data
    swell_data.map do |hour_swell_data|
      matching_hour_meteo_data = meteo_data.find do |hour_meteo_data|
        hour_meteo_data.timestamp == hour_swell_data.timestamp
      end
      struct_join hour_swell_data, matching_hour_meteo_data
    end
  end

  def swell_data
    @swell_data ||= buoy_data.swell_data
  end

  def meteo_data
    @meteo_data ||= buoy_data.meteo_data
  end

private

  def struct_join(main, other)
    mems = main.members + other.members
    vals = main.values + other.values
    Struct.new(nil, *mems).new(*vals)
end

end