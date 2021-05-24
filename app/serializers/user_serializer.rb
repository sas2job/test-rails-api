class UserSerializer
	include JSONAPI::Serializer
	attributes :id, :name, :email, :password, :password_confirmation
end
