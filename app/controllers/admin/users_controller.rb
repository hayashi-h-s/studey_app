class Admin::UsersController < ApplicationController
  before_action :login_required, {except:[:new, :create]}

  def index
    @users = User.all
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(users_params)
    if @user.save
      session[:user_id] = @user.id
      redirect_to posts_path, notice: "新規ユーザー『#{@user.name}』を作成しました。"
    else
      render :new
    end
  end

  def show
    @user = User.find(params[:id])
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])

    if @user.update(users_params)
      redirect_to admin_user_path,notice: "ユーザー「#{@user.name}」を更新しました。"
    else
      render :edit
    end
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy
    redirect_to admin_users_path,notice: "ユーザー『#{@user.name}』を削除しました"
  end

  def likes

  end

  private
  def users_params
    params.require(:user).permit(:name,:email,:details,:admin,:password,:password_confirmation, :image)
  end
end
