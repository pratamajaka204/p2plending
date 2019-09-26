class UsersController < ApplicationController
  def index
    # @users = User.all
    
    @users =  User.paginate(page: params[:page], per_page: 10)
  end

  def show
    @user = User.find(params[:id])
  end

  def new
  	@user = User.new
  end

  def edit
    @user = User.find(params[:id])
  end


  def create
    @user = User.new(user_params)
    # @user.email.downcase!

    if @user.save
      flash[:notice] = "Berhasil di tambahkan"
      redirect_to action: "index"
    else
      flash[:error] =  @user.errors.full_messages.map{|k,v| k}.join("<br/>").html_safe
      render :new
    end
  end

  def destroy
    @user = User.find(params[:id])
    
    @user.is_active ? @user.update_attributes(is_active: false) : @user.update_attributes(is_active: true) 

    # Usahakan jangan Destroy
    # @user.destroy

    redirect_to action: "index"

  end

  def update
    @user = User.find(params[:id])
    if @user.update(user_params)
      redirect_to @user
    else
      render 'edit'
    end
  end


  private
  	def user_params
  		params.require(:user).permit(:name, :address, :email)
  	end
end
