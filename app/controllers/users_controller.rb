class UsersController < ApplicationController
  #一覧表示をする時はindexアクション
  def index
    @users = User.all
  end

  #新規作成画面に対応するアクション
  def new
    @user = User.new
  end

  #追加するためのアクション
  def create
    User.create(user_params)
    redirect_to :action => "index"
  end

  #編集するためのアクション
  def edit
    @user = User.find(params[:id])
  end

  def update
    user = User.find(params[:id])
    user.update(user_params)
    redirect_to :action => "index"
  end

  #削除するためのアクション
  def destroy
    user = User.find(params[:id])
    user.delete
    redirect_to :action => "index"
  end

  private
#他のクラスから呼び出す必要がないのでprivateの下に書く
  def user_params
    #permitで入力できる情報を制限
    params.require(:user).permit(:name, :age)
  end
end
