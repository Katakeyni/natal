class AddScoreAndSteps < ActiveRecord::Migration
  def change
  	add_column :users, :coins, :integer
  	add_column :users, :steps, :integer
  end
end
