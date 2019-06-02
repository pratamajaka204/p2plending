class UsersController < ApplicationController
  def index
  	@users = User.all
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
      flash[:notice] = "Berhasil di tambahkan"
      redirect_to users_path
    else
      flash[:error] =  @user.errors.full_messages.map{|k,v| k}.join("<br/>").html_safe
      render :new
    end
  end

  def destroy
  end

  def update
  end

  def edit
  end

  private
  	def user_params
  		params.require(:user).permit(:name)
  	end
end
