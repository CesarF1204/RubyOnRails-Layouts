class PostsController < ApplicationController
    layout "three_column"
    def index
        @posts = Post.all
        @users = User.all
        render 'index'
    end
    def create
        Post.create(title: params[:title], content: params[:content], user_id: params[:user_id])
        redirect_to('/posts')
    end
end
