require 'rails_helper'

describe 'get all parks route', :type => :request do
  let!(:parks) { FactoryBot.create_list(:park, 20) }

  before { get '/all' }

  it 'returns all parks' do
    expect(JSON.parse(response.body).size).to eq(20)
  end

end