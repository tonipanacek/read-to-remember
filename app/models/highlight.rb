class Highlight < ApplicationRecord
  belongs_to :user
  belongs_to :source
  has_one :note, dependent: :destroy
  validates :content, presence: true
  validates :page, presence: true
  acts_as_taggable_on :tags
  acts_as_favoritable
end
