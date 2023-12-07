class AnimesController < ApplicationController
  def index
    @animes = Anime.all
    render template: "animes/index"
  end

  def show 
    @anime = Anime.find_by(id: params[:id])
    render template: "animes/show"
  end

  def create
    @anime = Anime.create(
      id: params[:id],
      title: params[:title],
      creator: params[:creator],
      main_character: params[:main_character],
      episode_count: params[:episode_count],
      years_run: params[:years_run]
    )
    render template: "animes/show"
  end
end
