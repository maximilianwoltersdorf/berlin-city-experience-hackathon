class PagesController < ApplicationController
before_filter :authenticate_user!

def index
  if user_signed_in?
    #redirect_to 
  end
end

def new
  if user_signed_in?
    redirect_to pages_path 
  end
end

end
