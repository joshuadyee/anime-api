class AnimesController < ApplicationController
  def index
    anime = Anime.all
    render json: {hi: anime}
  end
end
