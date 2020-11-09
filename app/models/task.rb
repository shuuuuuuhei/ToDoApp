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
#
class Task < ApplicationRecord
    belongs_to :user
end
