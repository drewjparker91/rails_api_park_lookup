require 'rails_helper'

describe 'get all route', :type => :request do
  let!(:parks) { FactoryBot.create_list(:park, 20) }

  before { get '/all' }

  it 'returns all 20 parks' do
    expect(JSON.parse(response.body).size).to eq(20)
  end

  it 'returns status code 200' do
    expect(response).to have_http_status(:success)
  end
end