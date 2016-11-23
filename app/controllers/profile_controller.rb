class ProfileController < ApplicationController
  def index
    @links = Link.where(user_id: current_user)
  end
end
