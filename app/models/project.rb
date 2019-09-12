class Project < ApplicationRecord
  has_many :tasks, -> { order(:position) }, dependent: :destroy

  validates :name, presence: true, uniqueness: true

  before_validation :strip_name

  private

  def strip_name
    self.name = name.strip
  end
end
