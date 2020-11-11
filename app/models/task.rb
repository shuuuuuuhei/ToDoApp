# == Schema Information
#
# Table name: tasks
#
#  id         :integer          not null, primary key
#  content    :text
#  limit      :time
#  title      :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  boards_id  :integer
#  user_id    :integer
#
# Indexes
#
#  index_tasks_on_boards_id  (boards_id)
#  index_tasks_on_user_id    (user_id)
#
class Task < ApplicationRecord
    belongs_to :user
    belongs_to :task
end
