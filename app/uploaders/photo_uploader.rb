class PhotoUploader < FileUploader
  storage :fog
  def extension_white_list
    %w(jpg jpeg gif png)
  end
end
