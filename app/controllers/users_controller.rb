class UsersController < ActionController::Base

  def index
  end

  def new
    @user = User.new
    @users = User.all
    render :new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      flash[:notice] = "Your user name has been established."
      redirect_to user_path(@user)
    else
      flash[:alert] = "Please stablish a user name."
      @users = User.all
      render :new
    end
  end

end
