class FollowsController < ApplicationController
    def create
        followed = User.find(params[:user_id])
        follower = current_user
        Follow.create(follower: follower, followed: followed)
        redirect_to user_path(followed)
    end
    
    def destroy
        followed = User.find(params[:user_id])
        follower = current_user
        if follower == nil
            follow = Follow.where(followed_id: followed.id)
        else
            follow = Follow.where(followed_id: followed.id, follower_id: follower.id)
        end
        Follow.delete(follow)
        redirect_to user_path(followed)
    end
end
