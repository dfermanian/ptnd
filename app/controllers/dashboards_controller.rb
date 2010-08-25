class DashboardsController < ApplicationController
  before_filter :login_required

  def show
    @user = facebook_session.user

    respond_to do |format|
      format.html
    end 
  end 
end