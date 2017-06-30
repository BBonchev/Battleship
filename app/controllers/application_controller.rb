class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception #kato ima sessia shte go vurna
  include SessionsHelper
end