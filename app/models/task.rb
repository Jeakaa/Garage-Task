class Task < ApplicationRecord
  ON = 1
  OFF = 0

  STATES = [
    ['Not Done', OFF],
    ['Done', ON]
  ]

  belongs_to :project

  validates :name, presence: true
  validates :project_id, presence: true
  validates :status, presence: true

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
end
