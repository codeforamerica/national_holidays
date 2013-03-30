class ApplicationController < ActionController::Base
  protect_from_forgery

  rescue_from Holidays::UnknownRegionError do
    @upcoming_holidays = nil
    render :index
  end
end
