class Tagging < ActiveRecord::Base
  belongs_to :tag
  belongs_to :integrate_development
  # attr_accessible :title, :body
end
