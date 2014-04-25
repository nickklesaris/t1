class Item < ActiveRecord::Base
  belongs_to :evaluation_session
  has_many :ratings
end
