require 'rails_helper'

describe 'Pageviews API' do
  describe '#create' do
    context 'for an existing user' do
      before do
        User.create(email: 'a@a.com', password: '12345678')
      end

      it 'returns 200 ok' do
        post "/api/v1/users/#{User.first.id}/pageviews", pageview: {url: 'http://google.com'}
        expect(response).to be_success
      end

      it 'creates a pageview for the user' do
        post "/api/v1/users/#{User.first.id}/pageviews", pageview: {url: 'http://google.com'}
        expect(User.first.pageviews.first.url).to eq('http://google.com')
      end
    end
  end
end
