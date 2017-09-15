module UsersHelper
  def all_copywriters
    User.where(role: "copywriter")
  end
end
