require 'rails_helper'

RSpec.describe UserSerializer, type: :serializer do
	describe 'as_json' do
		it 'includes name and email' do
			spec_user = FactoryBot.build( :user, name: 'specuser', email: 'specuser@email.com' )
			serialized = JSON.parse(spec_user.serializable_hash.to_json)
			expect( serialized[ "name" ] ).to eq "specuser"
      expect( serialized[ "email" ] ).to eq "specuser@email.com"
		end
	end
end
