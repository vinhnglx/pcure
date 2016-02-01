class AttachmentUploader < FileUploader
  storage :fog
  def extension_white_list
    %w(pdf doc htm html docx)
  end
end
