class Blog::ImageUploader < CarrierWave::Uploader::Base
  include Cloudinary::CarrierWave
  include CarrierWave::MiniMagick

  process :convert => 'jpg'
  process :tags => ['post_picture']

  # Create different versions of your uploaded files:
  version :thumb do
     process :resize_to_fill => [702, 390]
  end

  version :full_size do
    process :resize_to_fill => [770, 450]
  end

end
