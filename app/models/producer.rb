class Producer < ActiveRecord::Base
  validates :name, :description, :priority, presence: true
end
