require 'rails_helper'

RSpec.describe 'Articles' do
  before(:each) { Article.create(title: "art 2", description: "Content article 2") }
  context 'GET' do
    it 'is response ok?' do
      get '/api/v1/articles.json'

      expect(response).to have_http_status(:ok)
    end

    it 'content was included on response' do
      get '/api/v1/articles.json' do
        expect(response.body).to include('art 2')
        expect(response.body).to include('Content article 2')
      end
    end
  end
end
