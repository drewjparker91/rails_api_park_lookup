# require 'rails_helper'

# describe 'get all parks route', :type => :request do
#   let!(:parks) { FactoryBot.create_list(:park, 20) }

#   before { get '/parks' }

#   it 'returns first 10 paginated parks' do
#     expect(JSON.parse(response.body).size).to eq(10)
#   end

#   it 'returns status code 200' do
#     expect(response).to have_http_status(:success)
#   end
# end