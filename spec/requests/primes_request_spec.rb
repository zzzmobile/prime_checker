# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'Primes', type: :request do
  let(:number_params) do
    {
      number: '31'
    }
  end

  describe 'GET /index' do
    it 'returns http success' do
      get '/primes#index'
      expect(response).to have_http_status(:success)
    end
  end

  describe 'POST /create' do
    it 'returns http success' do
      post '/primes#create', params: number_params.to_json, headers: { 'Content-Type': 'application/json' }
      expect(response).to have_http_status(302)
    end
  end
end
