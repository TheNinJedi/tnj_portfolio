class StaticPagesController < ApplicationController
  def home
    @ip_info = IpInfo.new().get_ip_info
  end

  def about_me
  end

end
