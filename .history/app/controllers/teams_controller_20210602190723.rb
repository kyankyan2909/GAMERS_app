class TeamsController < ApplicationController
  def index
    @teams=Team.all.order()
  end
  def create
   @team=Team.new(
     name: params[:name]
   )
   if @team.save
    flash[:notice]="チームを作成しました。"
    redirect_to("/teams/index")
   end
  end
end
