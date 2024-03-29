class ApplicationController < ActionController::Base
  add_flash_types :success, :info, :warning, :danger
  before_action :require_login
  before_action :set_search
  protect_from_forgery with: :exception

  def set_search
    @q = Post.ransack(params[:q])
    @posts = @q.result
  end

  def require_login
    unless current_user
      flash[:danger] = "ログインしてください"
      redirect_to root_path
    end
  end
end
