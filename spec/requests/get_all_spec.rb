require 'rails_helper'

describe 'get all route', :type => :request do
  let!(:parks) { FactoryBot.create_list(:park, 20) }

  before { get '/all', token: "74c3fd0b56630a88daddf564f0fb6acf" }

  it 'returns all 20 parks' do
    expect(JSON.parse(response.body).size).to eq(20)
  end

  it 'returns status code 200' do
    expect(response).to have_http_status(:success)
  end
end