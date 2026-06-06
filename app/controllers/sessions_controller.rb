class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by({ "email" => params["email"] })

    if user && user.authenticate(params["password"])
      session["user_id"] = user["id"]
      redirect_to "/places"
    else
      redirect_to "/sessions/new"
    end
  end

  def destroy
    reset_session
    redirect_to "/sessions/new"
  end
end
  