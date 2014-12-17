class OverviewController < ApplicationController
  
  layout 'application'

  def index
    live_data = PontDelPetroli.now

    @swell_data = live_data.swell_data
    @meteo_data = live_data.meteo_data

    @historic_data = HistoryRetrievalService.new.matched_data
  end
end
