class SessionsController < ApplicationController
def new

end
  def create
  session[:password] = params[:password]
  flash[:notice] = "Successfully logged in"
  redirect_to categories_path

end

  def destroy
   reset_session
   flash[:notice] = "Successfully logged out"
   redirect_to categories_path
  end

end

