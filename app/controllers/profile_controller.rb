class ProfileController < ApplicationController
  def index
    @links = Link.where(user_id: current_user).order("created_at DESC").paginate(:page => params[:page], per_page: 7)
  end
end
