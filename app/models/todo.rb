class Todo < ActiveRecord::Base
  attr_accessible :description, :due_date, :notes, :parent_id, :position, :scheduled_at, :urgent
end
