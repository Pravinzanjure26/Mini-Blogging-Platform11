module Admin
  class UsersController < ApplicationController
    before_action :authenticate_user!
    before_action :require_admin

    def index
      @users = User.all.order(created_at: :desc)
    end

    def destroy
      user = User.find(params[:id])
      if user != current_user
        user.destroy
        redirect_to admin_users_path, notice: "User deleted successfully."
      else
        redirect_to admin_users_path, alert: "You cannot delete yourself!"
      end
    end

    private

    def require_admin
      redirect_to root_path, alert: "Access denied!" unless current_user.admin?
    end
  end
end
