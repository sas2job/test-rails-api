require 'rails_helper'

RSpec.describe UserSerializer, type: :serializer do
	describe 'as_json' do
		it 'returns the current user' do
			spec_user = FactoryBot.build( :user )
			serialized = JSON.parse( spec_user.serializable_hash.to_json )
			expect( serialized ).to match_response_schema( 'user' )
		end
	end
end
