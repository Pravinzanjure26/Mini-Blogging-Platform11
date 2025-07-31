class DashboardController < ApplicationController
  before_action :authenticate_user!

  def index
    @user_posts = current_user.posts.includes(:comments)
    @user_comments = current_user.comments.includes(:post)
  end
end
