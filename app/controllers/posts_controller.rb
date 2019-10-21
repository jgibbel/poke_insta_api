class PostsController < ApplicationController

    def index 
        posts = Post.all 
        render json: posts
    end 

    def show 
        post = Post.find(params[:id])
        render json: post
    end 

    def create 
        @post = Post.create(post_params)
        if @post.valid?
            render json: @post 
        else 
            render json: {errors: @post.errors.full_messages}
        end 

    end 

    def update 
        @post = Post.find(params[:id])
        @post.update(post_params)
        render json: @post
    end 

    def destroy 
        @post = Post.find(params[:id])
        @post.destroy
        render json: {message: "It has been destroyed"}
    end 

    private

    def post_params
        params.permit(:caption, :image, :pokemon)
    end

end
