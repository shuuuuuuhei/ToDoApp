# == Schema Information
#
# Table name: comments
#
#  id         :integer          not null, primary key
#  content    :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  task_id    :integer
#  user_id    :integer
#
# Indexes
#
#  index_comments_on_task_id  (task_id)
#  index_comments_on_user_id  (user_id)
#
class Comment < ApplicationRecord
    has_one_attached :eyecatch

    belongs_to :task
    belongs_to :user
end
