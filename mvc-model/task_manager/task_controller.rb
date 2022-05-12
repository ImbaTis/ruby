require_relative 'task'
require_relative 'task_view'

class TaskController

  def initialize(repository)
    @repository = repository
    @view = TaskView.new
  end

  def list
    display_task
  end

  def create
    description = @view.ask_user_for_description
    task = Task.new(description)
    @repository.add_task(task)
  end

  def mark_as_done
    display_task
    index = @view.ask_user_for_index
    task = @repository.find(index)
    task.mark_as_done!
  end

  def destroy
    display_task
    index = @view.ask_user_for_index
    @repository.remove_task(index)
  end

  private

  def display_task
    # 1. Fetch tasks from rep
    tasks = @repository.all
    # 2. Send to view to display
    @view.display(tasks)
  end
end
