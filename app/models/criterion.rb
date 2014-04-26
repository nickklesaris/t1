class Criterion < ActiveRecord::Base
  belongs_to :evaluation_session
  has_many :ratings
  validates :name, presence: true, uniqueness: {scope: :evaluation_session_id}
end
