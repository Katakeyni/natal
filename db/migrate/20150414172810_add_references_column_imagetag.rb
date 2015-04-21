class AddReferencesColumnImagetag < ActiveRecord::Migration
  def change
  	add_column :imagetags, :picture, :integer 
  	add_column :imagetags, :tag, :integer
  	add_reference :imagetags, :tag, index: true
  	add_reference :imagetags, :picture, index: true
  end
end
