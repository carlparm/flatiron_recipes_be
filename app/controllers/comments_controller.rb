class CommentsController < ApplicationController

    def index
        comments = Comment.all
        render json: comments.to_json()
    end

    def create
        comment = Comment.create(user_id: 34, recipe_id: params[:recipe_id], content: params[:content])
        render json: comment.to_json()
    end
    
end
