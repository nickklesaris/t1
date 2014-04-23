class EvaluationSession < ActiveRecord::Base
  has_many :items, dependent: :destroy
  has_many :criteria, dependent: :destroy
  validates :name, presence: true, uniqueness: {case_sensitive: false}
  validates :item_type, presence: true
end
