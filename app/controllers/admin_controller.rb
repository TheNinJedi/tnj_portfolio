class AdminController < ApplicationController

  before_filter :authenticate_user!, :authorize_admin

  def index

  end


  private

  def authorize_admin
    redirect_to root_path, alert: "You do not have Admin Privileges." unless current_user.is_ninjedi?
  end
end
