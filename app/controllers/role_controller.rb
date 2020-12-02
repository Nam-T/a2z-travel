class RoleController < ApplicationController
  def redirect
    if current_account.has_role? :admin
      redirect_to admin_homepage_index_path(current_account)
    elsif current_account.has_role? :guider
      redirect_to guider_homepage_index_path(current_account)
    elsif current_account.has_role? :user
      redirect_to user_homepage_index_path(current_account)
    end
  end
end
