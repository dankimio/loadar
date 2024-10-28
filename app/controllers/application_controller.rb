class ApplicationController < ActionController::Base
  # Only allow modern browsers supporting webp images, web push, badges, import maps, CSS nesting, and CSS :has.
  allow_browser versions: :modern

  helper_method :current_company_name

  private

  def current_company_name
    @current_company_name ||= session[:company_name]
  end
end
