class SessionsController < ApplicationController
  def create
    user = User.find_or_create_by(email: params[:email]) do |u|
      u.name = params[:name]
    end
    session[:user_id] = user.id
    redirect_to dashboard_path, status: :see_other
  end

  def destroy
    session.delete(:user_id)
    redirect_to root_path
  end
end
