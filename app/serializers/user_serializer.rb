class UserSerializer
	include JSONAPI::Serializer
	attributes :id, :name, :email, :password, :password_confirmation
	set_key_transform :camel_lower
end
