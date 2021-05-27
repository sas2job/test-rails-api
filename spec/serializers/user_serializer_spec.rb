require 'rails_helper'

RSpec.describe UserSerializer, type: :serializer do
	describe 'as_json' do
		it 'includes name and email' do
			spec_user = build( :user, name: 'specuser', email: 'specuser@email.com' )
			serialized = spec_user.serializable_hash.to_json
			expect( serialized[ :data ][ :attributes ][ :name ] ).to eq "specuser"
      expect( serialized[ :data ][ :attributes ][ :email ] ).to eq "specuser@email"
		end
	end
end
