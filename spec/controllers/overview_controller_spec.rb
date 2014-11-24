require 'rails_helper'

RSpec.describe OverviewController, :type => :controller do

  describe 'GET index' do
    it 'fetches data from Pont del petroli' do
      get :index
      expect(response).to render_template("index")
    end
  end
end
