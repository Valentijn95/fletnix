class ApiController < ApplicationController

  def movies()
    movies = Movie.all
    render json: movies.to_json
  end


end
