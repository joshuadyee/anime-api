class AnimesController < ApplicationController
  def index
    @animes = Anime.all
    render template: "animes/index"
  end

  def show 
    @anime = Anime.find_by(id: params[:id])
    render template: "animes/show"
  end
end
