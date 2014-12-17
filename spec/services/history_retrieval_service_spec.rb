require 'rails_helper'

describe HistoryRetrievalService do
  let(:subject)      { HistoryRetrievalService.new }
  let(:matched_data) { subject.matched_data }

  describe '#swell_data' do
    it 'returns an array of swell data' do
      expect( subject.swell_data ).to be_an Array
    end
  end

  describe '#meteo_data' do
    it 'returns an array of meteo data' do
      expect( subject.swell_data ).to be_an Array
    end
  end

  describe '#matched_data' do
    it 'returns an array of matched swell and meteo data' do
      expect( matched_data ).to be_an Array
    end

    it 'each object contains both meteo and swell data' do
      expect( matched_data.first ).to respond_to( :height, :direction, :wind_speed, :wind_direction, :period )
    end
  end
end