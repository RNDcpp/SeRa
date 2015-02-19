class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string :name
      t.string :caption
      t.datetime :dead_line
      t.datetime :start_time
      t.integer :weight
      t.timestamps null: false
    end
  end
end
