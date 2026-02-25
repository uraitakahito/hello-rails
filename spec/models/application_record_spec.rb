# frozen_string_literal: true

require 'rails_helper'

RSpec.describe ApplicationRecord do
  it 'is an abstract class' do
    expect(described_class).to be_abstract_class
  end
end
