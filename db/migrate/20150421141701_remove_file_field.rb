class RemoveFileField < ActiveRecord::Migration
  def change
    remove_column :pictures, :file
    remove_column :pictures, :file_file_name
    remove_column :pictures, :file_content_type
    remove_column :pictures, :file_file_size
    remove_column :pictures, :file_updated_at
  end
end
