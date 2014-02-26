class Blog::Ckeditor::Asset < ActiveRecord::Base
  include Blog::Ckeditor::Orm::ActiveRecord::AssetBase

  delegate :url, :current_path, :content_type, :to => :data

  validates_presence_of :data
end
