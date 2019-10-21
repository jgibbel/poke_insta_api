class LikesController < ApplicationController

    def index 
        likes = Like.all 
        render json: likes
    end 

    def show 
        like = Like.find(params[:id])
        render json: like
    end 

    def create 
        @like = Like.create(like_params)
        if @like.valid?
            render json: @like 
        else 
            render json: {errors: @like.errors.full_messages}
        end 

    end 

    def update 
        @like = Like.find(params[:id])
        @like.update(like_params)
        render json: @like
    end 

    def destroy 
        @like = Like.find(params[:id])
        @like.destroy
        render json: {message: "It has been destroyed"}
    end 

    private

    def like_params
        params.permit(:caption, :image, :pokemon)
    end

end
