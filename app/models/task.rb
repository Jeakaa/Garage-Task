class Task < ActiveRecord::Base

  belongs_to :project

  validates_presence_of :name
  validates_presence_of :project_id
  validates_presence_of :status





  OFF = 0
  ON = 1

  STATES = [
      ["Not Done", OFF],
      ["Done", ON],
  ]

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
