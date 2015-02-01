class Producer < ActiveRecord::Base
  validates :name, presence: true
end
