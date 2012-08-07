class SessionsController < ApplicationController
  def create
      auth = request.env["omniauth.auth"]
      p '#' * 100
      p auth.to_json
      user = User.find_by_uid(auth["uid"]) || User.create_from_omniauth(auth)
      session[:user_id] = user.id
      redirect_to user_path(user), notice: "Signed in!"
    end

    def destroy
      session[:user_id] = nil
      redirect_to user_path(User.first), notice: "Signed out!"
    end
end
