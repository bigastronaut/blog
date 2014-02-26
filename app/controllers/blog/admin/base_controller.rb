class Blog::Admin::BaseController < Blog::ApplicationController
  #include Blog::ControllerHelpers::Auth
  #force_ssl if Blog::Config.admin_force_ssl # TODO: find a way to test that with capybara
  
  layout "admin"

  before_filter :authenticate_user!

end
