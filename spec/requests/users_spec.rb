require 'rails_helper'

RSpec.describe 'Users', type: :request do
  describe 'GET #index' do
    before(:example) { get '/users' }
    it 'users request is a success' do
      expect(response).to have_http_status(:ok)
    end

    it 'should render correct template' do
      expect(response).to render_template(:index)
    end

    it 'body content should match' do
      expect(response.body).to include('Here is the list of users')
    end
  end

  describe 'GET /show' do
    before(:example) { get '/users/1' }
    it 'users request for a specific ID is a success' do
      expect(response).to have_http_status(:ok)
    end

    it 'should render correct template' do
      expect(response).to render_template(:show)
    end

    it 'body content should match' do
      expect(response.body).to include('here is a specific user')
    end
  end
end
