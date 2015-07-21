class SessionsController < ApplicationController


  def new
  end


  def create

   user = User.authenticate(params[:user][:email],
      params[:user][:password])

   if user

   session[:user_id] = user.id
   flash[:success] = 'You are now logged in.'
   redirect_to root_path
   else
    #incorrect email or password
    flash[:danger] = 'Invalid email or password.'
    redirect_to login_path
  end
  end

  def destroy

    session[:user_id] = nil
    flash[:info] = "You are now logged out"
    redirect_to login_path
  end

end



end
