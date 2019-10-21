class FollowsController < ApplicationController
    
    def index 
        follows = Follow.all 
        render json: follows
    end 

    def show 
        follow = Follow.find(params[:id])
        render json: follow
    end 

    def create 
        @follow = Follow.create(follow_params)
        if @follow.valid?
            render json: @follow 
        else 
            render json: {errors: @follow.errors.full_messages}
        end 

    end 

    def update 
        @follow = Follow.find(params[:id])
        @follow.update(follow_params)
        render json: @follow
    end 

    def destroy 
        @follow = Follow.find(params[:id])
        @follow.destroy
        render json: {message: "It has been destroyed"}
    end 

    private

    def follow_params
        params.permit(:pokemon_id, :following_id)
    end
end
