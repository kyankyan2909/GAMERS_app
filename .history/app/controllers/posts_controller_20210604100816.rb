class PostsController < ApplicationController

  
  def index
    @posts= Post.all.order(created_at: :desc)
    @user=
  end

  def create
    @post=Post.new(
      content: params[:content],
      user_id: @current_user.id
    )
    if @post.save
      flash[:notice]="投稿しました。"
      redirect_to("/posts/index")
    else

    flash[:notice]="＊＊＊＊＊投稿できません＊＊＊＊＊＊＊"
    render("/posts/index")

    end
  end


  def edit
    @post=Post.find_by(id: params[:id])
    @user= User.find_by(id: @post.user_id)
  end
  def destroy
    @post=Post.find_by(id: params[:id])
   if  @post.destroy
    flash[:notice]="投稿を削除しました。"
    redirect_to("/posts/index")
   end
  end
  
end
