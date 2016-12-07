class ProfileController < ApplicationController
  def index
    @links = Link.where(user_id: current_user).order("created_at DESC").paginate(:page => params[:page], per_page: 9)
    if params[:search]
      @links = Link.where(user_id: current_user).search(params[:search]).order("created_at DESC").paginate(:page => params[:page], per_page: 9)
    else
      @links = Link.where(user_id: current_user).all.order("created_at DESC").paginate(:page => params[:page], per_page: 9)
    end
    @counting = Link.where(user_id: current_user).count
    @link = Link.new


  end

end
