class UserController < ApplicationController




  def show
    @links = Link.where(user_id: current_user)
  end
end
