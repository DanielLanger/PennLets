class Suggestion < ActiveRecord::Base
  belongs_to :user
  attr_accessible :rating, :suggestion, :user_id
end
