class ChangeStubFileType < ActiveRecord::Migration
  def change
    change_column(:events, :stub_file_upload, :text)
  end
end
