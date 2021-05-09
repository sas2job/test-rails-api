# frozen_string_literal: true

module Api
  module V1
    class UsersController < ApplicationController
      def index
        @users = User.all
        render json: @users
      end

      def show
        user = User.find_by(id: params[:id])
        return render json: { errors: 'User not found' }, status: 404 unless user

        render json: user
      end

      def create
        @user = User.new(user_params)
        if @user.save
          render json: { success: true, name: @user.name, email: @user.email }, status: 201
        else
          render json: { error: @user.errors }, status: 422
        end
      end

      def update
        @user = User.find_by(id: params[:id])

        if @user
          @user.update(user_params)
          render json: { message: 'User successfully updated.' }
        else
          render json: { error: 'Unable to update User.' }
        end
      end

      def destroy
        @user = User.find_by(id: params[:id])
        if @user
          @user.destroy
          render json: { message: 'User successfully deleted.' }
        else
          render json: { error: 'Unable to delete User.' }
        end
      end

      private

      def user_params
        params.permit(:name, :email, :password, :password_confirmation)
      end
    end
  end
end
