# frozen_string_literal: true

# Returns application health status
class HealthController < ApplicationController
  def show
    render json: { status: 'ok' }
  end
end
