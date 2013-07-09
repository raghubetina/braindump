class Todo < ActiveRecord::Base
  attr_accessible :description, :due_date, :notes, :parent_id, :position, :scheduled_at, :urgent

  validates_presence_of :description

  scope :projects, where(parent_id: nil)

  belongs_to :parent, class_name: 'Todo', foreign_key: 'parent_id'
  has_many :children, class_name: 'Todo', foreign_key: 'parent_id', dependent: :destroy
end
