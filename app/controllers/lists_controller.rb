class ListsController < ApplicationController
  before_action :authenticate_user!

  def create
    name = params[:list][:name]
    new_list = List.new(:name => name)
    user = current_user
    new_list.user = user
    if new_list.save
      redirect_to app_path
    else
      # render 'main/index', status: :unprocessable_entity
      redirect_to app_path, :alert => "that is not allowed"
    end
  end

  def show
    @list = List.find(params[:id])
  end


end
