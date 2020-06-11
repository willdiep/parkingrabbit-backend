class AuthController < ApplicationController
  skip_before_action :authorize
  def create
    # byebug
    user = User.find_by(email: auth_params[:email])
    if user && user.authenticate(auth_params[:password])
      my_token = issue_token(user)
      # byebug
      
      render json: {user: user, token: my_token}     
      # render json: {id: user.id, username: user.username, token: my_token}
    else
      render json: {error: 'That user could not be found'}, status: 401
    end
  end

  def reauth
    #byebug
    #puts "\n\nHeaders: #{request.headers}\n\n"
    current_user_id = user_id()
    if !!current_user_id
      #success
      user = User.find(current_user_id)
      render json: {user: user}
    else
      #error
      render json: {error: 'No JWT present.'}
    end
  end

  # def show
  #   if logged_in?
  #     render json: { id: current_user.id, username: current_user.username }
  #   else
  #     render json: {error: 'No user could be found'}, status: 401
  #   end
  # end

  private

  def auth_params
    params.require(:auth).permit(:email, :password)
  end

end
