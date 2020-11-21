# == Schema Information
#
# Table name: tasks
#
#  id         :integer          not null, primary key
#  content    :text
#  limit      :datetime
#  title      :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  board_id   :integer
#  user_id    :integer
#
# Indexes
#
#  index_tasks_on_board_id  (board_id)
#  index_tasks_on_user_id   (user_id)
#
class Task < ApplicationRecord
    has_one_attached :eyecatch
    has_many :comments, dependent: :destroy

    belongs_to :user
    belongs_to :board

    validates :content, presence: true
    validates :limit, presence: true
end
