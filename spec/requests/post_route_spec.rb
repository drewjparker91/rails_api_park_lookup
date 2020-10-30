require 'rails_helper'

describe "post a park route", :type => :request do
  
  before do
    post '/parks', params: { :name => 'test_name', :location => 'test_location', :review => 'test_review', :rating => 1 }
  end

  it 'returns the park name' do
    expect(JSON.parse(response.body)['name']).to eq('Test Name')
  end

  it 'returns the park location' do
    expect(JSON.parse(response.body)['location']).to eq('Test Location')
  end

  it 'returns the park review' do
    expect(JSON.parse(response.body)['review']).to eq('test_review')
  end

  it 'returns the park rating' do
    expect(JSON.parse(response.body)['rating']).to eq(1)
  end
end