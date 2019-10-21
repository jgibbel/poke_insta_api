class LikesController < ApplicationController
    def index
        likes = Like.all 
        render json: likes
    end

    def show
        @like = Like.find_by(id: params[:id])
        render json: @like
    end

    def create
        @like = Like.create(like_params)
        if @like.valid?
            render json: @like
        else
            render json: {errors: @like.errors.full_messages}
        end
    end

    def destroy
        @like = Like.find_by(id: params[:id])
        @like.destroy
        render json: {message: "Like has been deleted"}
    end

    private

    def like_params
        params.permit(:image, :caption, :pokemon_id)
    end
end
