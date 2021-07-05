class TeamsController < ApplicationController
  def index

  end
  def create
   @team=Team.new(
     name: params[:name]
   )
   if @team.save
    flash[:notice]="チームを作成しました。"
    
  end
end
