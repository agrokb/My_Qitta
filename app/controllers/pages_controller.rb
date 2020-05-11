class PagesController < ApplicationController
  def index 
    @users = User.new
  end
end
