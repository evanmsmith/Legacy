class ApplicationController < ActionController::Base
  before_filter do
    @title = "My Legacy Plan"
  end
  protect_from_forgery
end
