class HomeController < ApplicationController
  def index
    @favorite_things = FavoriteThing.all
  end
end
