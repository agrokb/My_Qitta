class PagesController < ApplicationController
  def index 
    @users = User.new
    @stories = Story.all
  end
end
