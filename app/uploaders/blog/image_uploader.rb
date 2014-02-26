class Blog::ImageUploader < CarrierWave::Uploader::Base
  include Cloudinary::CarrierWave
  include CarrierWave::MiniMagick

  process :convert => 'png'
  process :tags => ['post_picture']

  # Create different versions of your uploaded files:
  version :thumb do
     process :resize_to_fit => [375, 218]
  end

  version :full_size do
    process :resize_to_fit => [770, 450]
  end

end
