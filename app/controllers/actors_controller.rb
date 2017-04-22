class ActorsController < ApplicationController
  def index
    @actors = Actor.all
  end

  def new
    @actor = Actor.new
  end

  def create
    actor = Actor.new(actor_params)
    actor.save
    redirect_to actors_path
  end

  private
    def actor_params
      params.require(:actor).permit(:name, :bio)
    end
end
