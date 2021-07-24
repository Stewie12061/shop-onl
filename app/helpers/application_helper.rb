module ApplicationHelper
  def user_login?
    !current_user.nil?
  end
end
