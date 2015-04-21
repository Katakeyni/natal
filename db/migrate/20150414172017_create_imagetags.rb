class CreateImagetags < ActiveRecord::Migration
  def change
    create_table :imagetags do |t|
      t.timestamps null: false
    end
  end
end
