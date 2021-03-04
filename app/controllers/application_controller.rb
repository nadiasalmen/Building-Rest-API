class ApplicationController < ActionController::Base
  layout false
  before_action :authenticate_user!
end
