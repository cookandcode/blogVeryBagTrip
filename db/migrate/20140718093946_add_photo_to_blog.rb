class AddPhotoToBlog < ActiveRecord::Migration
  def change
    add_column :blogs, :photo_uid,  :string
    add_column :blogs, :photo_name, :string
  end
end
