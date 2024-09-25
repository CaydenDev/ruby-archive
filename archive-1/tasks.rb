class Task
  attr_accessor :description, :completed

  def initialize(description)
    @description = description
    @completed = false
  end

  def complete
    @completed = true
  end
end

class TaskManager
  def initialize
    @tasks = []
  end

  def add_task(description)
    task = Task.new(description)
    @tasks << task
  end

  def list_tasks
    @tasks.each_with_index do |task, index|
      status = task.completed ? '✓' : '✗'
      puts "#{index + 1}. #{task.description} [#{status}]"
    end
  end
end

task_manager = TaskManager.new
task_manager.add_task('Buy groceries')
task_manager.add_task('Read a book')
task_manager.list_tasks
