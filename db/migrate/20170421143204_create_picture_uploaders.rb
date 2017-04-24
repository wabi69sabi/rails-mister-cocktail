class CreatePictureUploaders < ActiveRecord::Migration[5.0]
  def change
    create_table :picture_uploaders do |t|

      t.timestamps
    end
  end
end
