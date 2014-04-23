class Criterion < ActiveRecord::Base
  validates :name, presence: true
  end
