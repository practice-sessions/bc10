class Userscontroller < ApplicationController

  # Get to /users/:id
  def show
    @user = User.find( params[:id] )
  end

end
