class CreateRelationUserTasks < ActiveRecord::Migration
  def change
    create_table :relation_user_tasks do |t|

      t.timestamps null: false
    end
  end
end
