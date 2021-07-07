class UsersController < ApplicationController
    layout "two_column"
    def index
        @users = User.all
        render 'index'
    end
    def create
        User.create(first_name: params[:first_name], last_name: params[:last_name], favorite_language: params[:favorite_language])
        redirect_to('/users')
    end
end
