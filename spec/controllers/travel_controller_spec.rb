require 'rails_helper'

RSpec.describe TravelController, type: :controller do
  describe '#index' do
    it 'renders the page' do
      get :index
      expect(response).to render_template(:index)
    end
  end

  describe '#search' do
    it 'flash alert if country is not found' do
      get :search
      expect(flash[:alert]).to be_present
    end
  end
end
