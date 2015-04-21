class CreateCasePictureLinks < ActiveRecord::Migration
  def change
    create_table :case_picture_links do |t|
      t.references :case, index: true, foreign_key: true
      t.references :picture, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
