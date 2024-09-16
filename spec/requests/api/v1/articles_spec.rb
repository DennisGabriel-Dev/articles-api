require 'rails_helper'

RSpec.describe 'Articles' do
  before(:each) { Article.create(title: "art 2", description: "Content article 2") }
  let(:header) { http_basic_auth_header }
  context 'GET' do
    it 'is response ok?' do
      get '/api/v1/articles.json', headers: header

      expect(response).to have_http_status(:ok)
    end

    it 'content was included on response' do
      get '/api/v1/articles.json', headers: header do
        resposta = json_to_hash(response.body)

        expect(resposta[:data].first).not_to have_key(:created_at)
        expect(resposta[:data].first).not_to have_key(:update_at)
        expect(response.body).to include('art 2')
        expect(response.body).to include('Content article 2')
      end
    end
  end
end
