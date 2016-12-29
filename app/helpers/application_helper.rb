module ApplicationHelper
  def profile_picture(user)
    if user.image
      user.image
    else
      'https://ukla.org/images/icons/user-icon.svg'
    end
  end
end
