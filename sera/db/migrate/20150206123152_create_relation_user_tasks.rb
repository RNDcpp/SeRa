class CreateRelationUserTasks < ActiveRecord::Migration
  def change
    create_table :relation_user_tasks do |t|
      t.references :user, null: false
      t.references :task, null: false
      t.timestamps null: false
    end
  end
end
