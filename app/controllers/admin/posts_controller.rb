module Admin
  class PostsController < ApplicationController
    before_action :authenticate_user!
    before_action :require_admin

    def index
      @posts = Post.all.order(created_at: :desc)
    end

    def destroy
      @post = Post.find(params[:id])
      @post.destroy
      redirect_to admin_posts_path, notice: "Post deleted successfully."
    end

    private

    def require_admin
      redirect_to root_path, alert: "Access denied!" unless current_user.admin?
    end
  end
end
