class PostsController < ApplicationController

    def index
        posts = Post.all 
        render json: posts
    end

    def show
        @post = Post.find_by(id: params[:id])
        render json: @post
    end

    def create
        @post = Post.create(post_params)
        if @post.valid?
            render json: @post
        else
            render json: {errors: @post.errors.full_messages}
        end
    end

    def destroy
        @post = Post.find_by(id: params[:id])
        @post.destroy
        render json: @post
    end

    private

    def post_params
        params.permit(:image, :caption, :pokemon_id)
    end
end
