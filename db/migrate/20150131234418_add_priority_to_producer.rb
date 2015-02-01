class AddPriorityToProducer < ActiveRecord::Migration
  def change
    add_column :producers, :priority, :integer
  end
end
