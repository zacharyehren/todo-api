class Api::UsersController < ApiController

  before_action :authenticated?

  def index
    @users = User.all
    render json: @users, each_serializer: UserSerializer
  end

  def create
    user = User.new(user_params)
     if user.save
      # render json searches for a serializer for the object, in this case UserSerializer
      render json: user
    else
      render json: { errors: user.errors.full_messages }, status: :unprocessable_entity
    end
  end

  private
   def user_params
     params.require(:user).permit(:username, :password)
   end
end
