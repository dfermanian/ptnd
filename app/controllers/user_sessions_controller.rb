class UserSessionsController < ApplicationController
 before_filter :login_required, :only => :destroy

  def new 
    @user = User.new
    @user_session = UserSession.new
  end 

  def create
    @user_session = UserSession.new(params[:user_session])

    if @user_session.save
      flash[:notice] = "Sign in successful!"
      respond_to do |format|
        format.html { redirect_to dashboard_url }
      end 
    else
      respond_to do |format|
        format.html { render :action => :new }
      end 
    end 
  end 

  def destroy
    current_user_session.destroy
    flash[:notice] = "Sign out successful!"

    respond_to do |format|
      format.html { redirect_back_or_default new_user_session_url }
    end 
  end 
end