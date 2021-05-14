# frozen_string_literal: true

FactoryBot.define do
	factory :user do
		sequence( :name ) { | n | "factoryuser#{ n }" }
		sequence( :email ) { | n | "factoryuser#{ n }@example.com" }
		password { 'Password1!' }
		password_confirmation { 'Password1!' }
	end
end
