class ProductImageUploader < CarrierWave::Uploader::Base
  # Include RMagick or MiniMagick support:
  # include CarrierWave::RMagick
  include CarrierWave::MiniMagick

  VERSIONS = {
    thumb: '120x120'
  }.freeze

  def store_dir
    "uploads/#{model.class.to_s.underscore}/#{mounted_as}/#{model.id}"
  end

  process resize_to_fill: [314, 314]

  def extension_allowlist
    %w[jpg jpeg gif png]
  end
end
