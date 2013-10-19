class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  private

  def current_user
    @current_user ||= find_user_by_session_id if session[:user_id].present?
  end

  def find_user_by_session_id
    begin
      User.find(session[:user_id])
    rescue ActiveRecord::RecordNotFound => e
      session.delete(:user_id)
      nil
    end
  end

  helper_method :current_user
end
