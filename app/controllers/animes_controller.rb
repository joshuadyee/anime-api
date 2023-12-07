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

  def update
    @anime = Anime.find_by(id: params[:id])
    @anime.title = params[:title] || @anime.title
    @anime.creator = params[:creator] || @anime.creator
    @anime.main_character = params[:main_character] || @anime.main_character
    @anime.episode_count = params[:episode_count] || @anime.episode_count
    @anime.years_run = params[:years_run] || @anime.years_run
    @anime.save
    render template: "animes/show"
  end
end
