class HomeController < ApplicationController
  def index
  	@user = current_user || User.new
  	@task = Task.new
  end

  private

  def set_user
  	session[:user_id] ? User.find(session[:user_id]) : User.new
  end
end
