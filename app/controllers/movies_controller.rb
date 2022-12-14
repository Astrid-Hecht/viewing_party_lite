class MoviesController < ApplicationController
  before_action :set_page, only: :index

  def index
    if params_top_rated?
      @movies = MovieFacade.top_rated(params[:page])
      @subtitle = 'Top Rated Movies'
    elsif params[:q].present?
      @movies = MovieFacade.search(params[:q], params[:page])
      @subtitle = "Movie results for: '#{params[:q]}'"
    end
    @params = {page: params[:page], q: params[:q]}
  end

  def show
    @user = User.find(params[:user_id])
    @movie = MovieFacade.new_movie_details(params[:id])
  end

  private

  def set_page
    params[:page] = 1 unless params[:page].present?
  end

  def params_top_rated?
    (params[:q] == 'top rated' && !params[:commit].present?) || params[:q] == ''
  end
end