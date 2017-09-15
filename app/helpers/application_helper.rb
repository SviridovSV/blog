module ApplicationHelper
  def admin?
    return false unless current_user
    current_user.role == "admin"
  end

  def copywriter?
    return false unless current_user
    current_user.role == "copywriter"
  end

  def owner?(post)
    return false unless current_user
    post.user.id == current_user.id
  end
end
