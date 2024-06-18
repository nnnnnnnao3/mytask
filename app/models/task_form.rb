class TaskForm
  include ActiveModel::Model
  attr_accessor :title, :user_id, :task_text, :memo, :due_date

  validates :title, presence: true

  def save
    task = Task.create(title: title, user_id: user_id)

    TaskItem.create(task_text: task_text, memo: memo, due_date: due_date, task_id: task.id)
  end

end