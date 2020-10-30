require 'rails_helper'

describe "post a park route", :type => :request do
  
  before do
    post '/parks', params: { :name => 'test_name', :location => 'test_location', :review => 'test_review', :rating => 1 }
  end

  it 'returns the park name' do
    expect(JSON.parse(response.body)['name']).to eq('Test Name')
  end
end