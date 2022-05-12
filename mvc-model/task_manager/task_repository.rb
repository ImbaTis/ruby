# Features include:
# 1. add task
# 2. list all tasks
# 3. find a specific taksk for a given index
# 4. remove a task for a given index
class TaskRepository
  def initialize
    @tasks = []
  end

  def add_task(task)
    @tasks << task
  end

  def all
    @tasks
  end

  def find(index)
    @tasks[index]
  end

  def remove_task(index)
    @tasks.delete_at(index)
  end
end
