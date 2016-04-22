class Feedback < ActiveRecord::Base
  validates :name, presence: true
  validates :text, presence: true
end
