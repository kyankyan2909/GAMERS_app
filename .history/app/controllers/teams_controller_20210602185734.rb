class TeamsController < ApplicationController
  def index

  end
  def create
   @team=Team.new(
     name: params[:name]
   )
  end
end
