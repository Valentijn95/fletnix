class BookmarksController < ApplicationController

  def create
    movie_id = params[:bookmark][:movie_id]
    list_id = params[:bookmark][:list_id]
    bookmark = Bookmark.new(movie_id: movie_id, list_id: list_id)
    if bookmark.save
      redirect_to list_path(list_id)
    else
      render 'app', status: :unprocessable_entity
    end
  end

  private


end
