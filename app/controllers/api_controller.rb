include ActionController::HttpAuthentication::Basic::ControllerMethods
include ActionController::HttpAuthentication::Token::ControllerMethods

class ApiController < ApplicationController

  def authenticated?
    authenticate_or_request_with_http_basic {|username, password| User.where( username: username, password: password).present? }
  end
end
