class FollowsController < ApplicationController
    def index
        follows = Follow.all 
        render json: follows
    end

    def show
        @follow = Follow.find_by(id: params[:id])
        render json: @follow
    end

    def create
        @follow = Follow.create(follow_params)
        if @follow.valid?
            render json: @follow
        else
            render json: {errors: @follow.errors.full_messages}
        end
    end

    def destroy
        @follow = Follow.find_by(id: params[:id])
        @follow.destroy
        render json: {message: "Follow instance has been deleted"}
    end

    private

    def follow_params
        params.permit(:image, :caption, :pokemon_id)
    end
end
