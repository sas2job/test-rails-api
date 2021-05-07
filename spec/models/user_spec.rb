# frozen_string_literal: true

require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'creation' do
    it 'can be created' do
      user = User.create(name: 'testuser', email: 'test@example.com', password: 'Password!',
                         password_confirmation: 'Password!')

      expect(user).to be_valid
    end
  end
end
