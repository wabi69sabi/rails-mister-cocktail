class CreatePhotoUploaders < ActiveRecord::Migration[5.0]
  def change
    create_table :photo_uploaders do |t|

      t.timestamps
    end
  end
end
