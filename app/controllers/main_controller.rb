class MainController < ApplicationController

  before_action :authenticate_user!, except: [:index]

  def index
    if user_signed_in?
      redirect_to app_path
    end
  end

  def user_index
    @list = List.new()
    @bookmark = Bookmark.new()
    @movies = Movie.all
    @lists = List.where(:user_id => current_user)
    @user = current_user
  end
end
