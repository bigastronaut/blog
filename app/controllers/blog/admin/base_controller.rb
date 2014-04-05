class Blog::Admin::BaseController < Blog::ApplicationController
  before_filter :authenticate_user!
end
