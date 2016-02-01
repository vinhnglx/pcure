class AddAttachmentFileToProduct < ActiveRecord::Migration
  def change
    add_column :products, :attachment_file, :string
  end
end
