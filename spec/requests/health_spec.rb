# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'Health' do
  describe 'GET /health' do
    it 'returns a 200 status' do
      get '/health'
      expect(response).to have_http_status(:ok)
    end

    it 'returns JSON with status ok' do
      get '/health'
      expect(response.parsed_body['status']).to eq('ok')
    end
  end
end
