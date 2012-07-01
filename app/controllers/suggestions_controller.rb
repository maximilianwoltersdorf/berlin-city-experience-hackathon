class SuggestionsController < ApplicationController
require 'carrierwave/orm/activerecord'


def index
  if params[:all] == "true"
    @suggestions = Suggestion.limit(10).order("created_at DESC")
  else
    @suggestions = Suggestion.where(:user_id => current_user.id).limit(10).order("created_at DESC") if Suggestion.where(:user_id => current_user.id)
  end
end

def new
	@suggestion = Suggestion.new
  @user = current_user
end	

def create
  @suggestion = Suggestion.new(params[:suggestion])
  if @suggestion.save
    redirect_to pages_path
  end
end

def show
  @suggestion = Suggestion.find(params[:id])
  @comment = Comment.new
  @comments = @suggestion.comments
end

def destroy
  @suggestion = Suggestion.find(params[:id])
  if @suggestion.destroy
    redirect_to suggestions_path
  end
end

end
