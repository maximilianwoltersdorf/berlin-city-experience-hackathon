class CommentsController < ApplicationController
	def index

	end

	def create
		 @comment = Comment.new(params[:comment])
  			if @comment.save
          redirect_to suggestion_path(@comment.suggestion)
      end
	end
end
