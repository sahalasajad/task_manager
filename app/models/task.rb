class Task < ApplicationRecord
  belongs_to :user

  validates :title, presence: true

  after_initialize :set_default_completed, if: :new_record?

  private

  def set_default_completed
    self.completed = false if completed.nil?
  end
end
