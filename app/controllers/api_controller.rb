include ActionController::HttpAuthentication::Basic::ControllerMethods
include ActionController::HttpAuthentication::Token::ControllerMethods

class ApiController < ApplicationController
  #I'm not sure if this is needed but went ahead and added it just in case
  respond_to :json
  
  def authenticated?
    puts params
    authenticate_or_request_with_http_basic {|username, password| User.where( username: username, password: password).present? }
  end
end
