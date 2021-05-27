class UsersController < ApplicationController
  before_action :authenticate_user, {only: [:edit]}
  before_action :forbid_login_user, {only: [:signup,:signin,:create]}
  def signup
    @user=User.new
  end
  def create
   @user=User.new(
    name: params[:name],
    email: params[:email],
    password: params[:password],
    users_image: "default_users_image.jpg"
   )
   if @user.save
    flash[:notice]="ユーザー登録完了しました。"
    redirect_to("/users/signin")
   else
    flash[:notice]="ユーザー登録できません"
   end
  end
  def signin_form

  end
  def signin
   @user=User.find_by(email: params[:email], password: params[:password])
   if @user
    session[:user_id]=@user.id
    flash[:notice]="ログイン完了しました。"
    redirect_to("/posts/index")
   else
   @error_message="メールアドレスまたはパスワードが間違っています。"
   @email=params[:email]
   @password=params[:password]
   render("users/signin")
   end

    
  end
  def logout
   session[:user_id]=nil
   flash[:notice]="ログアウトしました。"
   redirect_to("/users/signin")
  end
  def update
   @user=User.find_by(id: params[:id])
   @user.name= params[:name]
   if params[:users_image]
    @user.users_image="#{@user.id}.jpg"
    image=params[:users_image]
    File.binwrite("public/users_image/#{@user.users_image}",image.read)
   
   end

   if @user.save
    flash[:notice]="ユーザー情報を更新しました。"
    redirect_to("/posts/index")
   end
  end
  def edit
   @user=User.find_by(id: params[:id])
  end
  def show
   @user=User.find_by(id: params[:id])
   @posts=Post.where)
  end
end
