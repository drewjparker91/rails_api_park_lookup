require 'rails_helper'

describe "delete park route", :type => :request do
  let!(:park) { FactoryBot.create(:park)}
  
  

  before {delete '/parks/:id'}

  it 'returns status code 204' do
    expect(response).to have_http_status(204)
  end
end