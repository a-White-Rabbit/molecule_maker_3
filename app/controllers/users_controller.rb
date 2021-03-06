class UsersController < ApplicationController

   def new
      if !logged_in?
         @user = User.new
      else
         redirect_to home_path
      end
   end

   def create
      user = User.new(user_params)
      if user.save
         session[:user_id] = user.id
         redirect_to home_path   
      else
         render :new
      end
   end



   private

   def user_params
      params.require(:user).permit(:name, :email, :username, :password)
   end

end
