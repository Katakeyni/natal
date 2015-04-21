class AddColumnToWoncases < ActiveRecord::Migration
  def change
  	add_column :won_cases, :case, :integer 
  	add_column :won_cases, :user, :integer
  	add_reference :won_cases, :user, index: true
  	add_reference :won_cases, :case, index: true
  end
end
