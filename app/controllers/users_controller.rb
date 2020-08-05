class UsersController < ApplicationController

    def index
        users = User.all
        render json: users.to_json(
            :include => {:recipes => {:except => [:created_at, :updated_at]}}
        )
    end

    def show
        user = User.find(params[:id])
        render json: user.to_json()
    end
    
end
