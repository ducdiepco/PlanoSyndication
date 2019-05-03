class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  class_attribute :permitted_attrs

  protected

  def render_no_results
    render plain: 'No results found'
  end

  def model_params
    params.permit(permitted_attrs)
  end
end
