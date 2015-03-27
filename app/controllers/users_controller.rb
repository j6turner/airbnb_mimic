class UsersController < ActionController::Base
  before_action :authenticate_user, except: [:index]

  def index
  end

  def show
  end

end
