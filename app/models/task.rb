class Task < ApplicationRecord
  ON = 1
  OFF = 0

  STATES = [
    ['Not Done', OFF],
    ['Done', ON]
  ]

  belongs_to :project

  scope :by_project, -> (project) { where(project_id: project) }

  validates :name, presence: true
  validates :project_id, presence: true
  validates :status, presence: true

  before_create :assign_position

  def self.previous(task)
    by_project(task.project).where('position < ?', task.position).order('position DESC').first
  end

  def self.next(task)
    by_project(task.project).where('position > ?', task.position).order('position ASC').first
  end

  def self.last_by_project(project)
    by_project(project).order(:position).last
  end

  def self.task_state(s)
    result = 'not set!!!'
    if s.blank? or (!s.is_a?(Integer) and !s.is_a?(Fixnum))
      return result
    end

    STATES.each do |i|
      if i[1] == s
        return i[0]
      end
    end

    return result
  end

  def new_position
    last_task = self.class.last_by_project(project)
    last_task ? last_task.position + 1 : 1
  end

  def move_up?
    self.class.previous(self).present?
  end

  def move_up
    return unless move_up?

    transaction do
      prev_task = self.class.previous(self)
      exchange_positions(prev_task)
    end
  end

  def move_down?
    self.class.next(self).present?
  end

  def move_down
    return unless move_down?

    transaction do
      next_task = self.class.next(self)
      exchange_positions(next_task)
    end
  end

  private

  def exchange_positions(task)
    buf_task_position = task.position
    task.update_column(:position, position)
    update_column(:position, buf_task_position)
  end

  def assign_position
    self.position = new_position
  end
end
