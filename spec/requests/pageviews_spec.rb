require 'rails_helper'

describe 'Pageviews API' do
  describe '#create' do
    it 'returns 200 ok' do
      post '/api/v1/pageviews', pageview: {url: 'http://google.com'}
      expect(response).to be_success
    end

    it 'creates a pageview for the given page' do
      post '/api/v1/pageviews', pageview: {url: 'http://google.com'}
      expect(Pageview.first.url).to eq('http://google.com')
    end
  end
end
