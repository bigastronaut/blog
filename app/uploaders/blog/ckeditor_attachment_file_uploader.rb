# encoding: utf-8
class Blog::CkeditorAttachmentFileUploader < CarrierWave::Uploader::Base
  include Ckeditor::Backend::CarrierWave

  include Cloudinary::CarrierWave
  include CarrierWave::MiniMagick

  def extension_white_list
    Ckeditor.attachment_file_types
  end
end
