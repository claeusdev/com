class AvatarUploader < CarrierWave::Uploader::Base

  # Include RMagick or MiniMagick support:
  
  # include CarrierWave::MiniMagick
  include Cloudinary::CarrierWave
  # Choose what kind of storage to use for this uploader:
  if Rails.env.development?
    include CarrierWave::RMagick
    storage :file
  end
  # Override the directory where uploaded files will be stored.
  # This is a sensible default for uploaders that are meant to be mounted:
  def store_dir
    "uploads/#{model.class.to_s.underscore}/#{mounted_as}/#{model.id}"
  end

  # def scale(width, height)
  #   # do something
  # end

  # Create different versions of your uploaded files:
  version :thumb do
    process convert: 'jpg'
    process resize_to_fit: [100, 100]
  end

  version :medium do
    process convert: 'jpg'
    process resize_to_fit: [600, 600]
  end
  # Add a white list of extensions which are allowed to be uploaded.
  # For images you might use something like this:
  def extension_whitelist
    %w(jpg jpeg gif png)
  end

  # Override the filename of the uploaded files:
  # Avoid using model.id or version_name here, see uploader/store.rb for details.
  # def filename
  #   "something.jpg" if original_filename
  # end

  # process convert: 'png'

  # def filename
  #   super.chomp(File.extname(super)) + '.png' if original_filename.present?
  # end

end