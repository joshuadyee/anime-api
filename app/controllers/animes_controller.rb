class AnimesController < ApplicationController
  def index
    @animes = Anime.all
    render template: "animes/index"
  end
end
