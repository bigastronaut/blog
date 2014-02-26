class Blog::Ckeditor::Picture < Blog::Ckeditor::Asset
  mount_uploader :data, Blog::CkeditorPictureUploader, :mount_on => :data_file_name

  def url_content
    url(:content)
  end
end
