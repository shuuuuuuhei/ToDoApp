class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true
  validates :title, presence: true
  validates :description, presence: true
end
