class UsersController < ApplicationController

   def new
      # if !logged_in?
         @user = User.new
      # else
      #    redirect_to home_path
      # end
   end

   def create
      farmer = Farmer.new(farmer_params)
      if farmer.save
         session[:farmer_id] = farmer.id
         redirect_to home_path   
      else
         render :new
      end
   end



   private

   def farmer_params
      params.require(:farmer).permit(:username, :email, :password)
   end

end
