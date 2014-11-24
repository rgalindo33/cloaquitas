class OverviewController < ApplicationController
  
  layout 'application'

  def index
    buoy = PontDelPetroli.now

    @swell_data = buoy.swell_data
    @meteo_data = buoy.meteo_data
  end
end
