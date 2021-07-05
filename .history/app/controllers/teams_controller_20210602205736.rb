class TeamsController < ApplicationController
  def index
    @teams=Team.all.order(created_at: :desc)
  end
  def create
   @team=Team.new(
     name: params[:name]
     team_image
   )
   if @team.save
   
    flash[:notice]="チームを作成しました。"
    redirect_to("/teams/index")
   end
  end
end
