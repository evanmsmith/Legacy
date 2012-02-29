class ApplicationController < ActionController::Base
  before_filter do
    @title = "Form PDF"
  end
  protect_from_forgery
end
