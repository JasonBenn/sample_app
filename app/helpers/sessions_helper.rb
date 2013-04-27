module SessionsHelper

  def sign_in(user)
    cookies.permanent[:remember_token] = user.remember_token
    current_user = user
  end

  def current_user=(user)
    @current_user = user
  end

  def current_user
    @current_user ||= User.find_by_remember_token(cookies[:remember_token])
  end

  def signed_in?
    !current_user.nil?
  end

  def sign_out
    current_user = nil
    cookies.delete(:remember_token)
  end
end

#helpers are modules that are automatically included in:
#  all views
#  related controller
#can be explicitly included in other controllers.
#  this way functions defined here are available if you need them