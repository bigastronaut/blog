CarrierWave.configure do |config|
  config.fog_credentials = {
    :provider               => 'AWS',
    :aws_access_key_id      => "#{Blog::Config.aws_access_key_id}",
    :aws_secret_access_key  => "#{Blog::Config.aws_secret_access_key}"
  }
  config.fog_directory = "#{Blog::Config.fog_directory}"
end
