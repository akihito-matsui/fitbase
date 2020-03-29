class UsersController < ApplicationController
  def index
    @users = User.page(params[:page]).per(25)
  end

  def show
    @user = User.find(params[:id])
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      flash[:success] = 'ユーザを登録しました。'
      redirect_to @user
    else
      flash.now[:danger] = 'ユーザの登録に失敗しました。'
      render :new
    end
  end
  
  private
  
  def user_params
    params.require(:user).permit(:name, :gender, :age, :resident, :birthplace, :training_place, :frequency, :objective, :protein_supplement, :music, :speakout, :message, :profile_picture, :email, :password, :password_confirmation)
  end
  
end
