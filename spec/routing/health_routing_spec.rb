# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'Health routing' do
  it 'routes GET /health to health#show' do
    expect(get: '/health').to route_to(controller: 'health', action: 'show')
  end
end
