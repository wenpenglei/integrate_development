class Comment < ActiveRecord::Base
  belongs_to :integrate_development
  attr_accessible :body, :commenter
end
