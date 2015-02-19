class Task < ActiveRecord::Base
has_one :relation_user_task
has_one :user, through: :relation_user_tasks

  def self.set_task(user,name: 'noname',caption: nil,dead_line: Time.now,start_time: Time.now,weight: 60)
    task = Task.new
    task.name = name
    task.caption = caption
    task.dead_line = dead_line
    task.start_time = start_time
    task.weight = weight
    raise task.errors.messages unless task.save
    relation = RelationUserTask.new
    relation.user = user
    relation.task = task
    raise relation.errors.messages unless relation.save 
  end
end
