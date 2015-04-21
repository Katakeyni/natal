class CreateWonCases < ActiveRecord::Migration
  def change
    create_table :won_cases do |t|
      t.datetime :winAt

      t.timestamps null: false
    end
  end
end
