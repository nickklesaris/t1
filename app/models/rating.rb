class Rating < ActiveRecord::Base
  belongs_to :criterion
  belongs_to :item
end
