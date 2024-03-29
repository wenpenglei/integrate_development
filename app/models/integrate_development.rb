class IntegrateDevelopment < ActiveRecord::Base
  attr_accessible :content, :name, :title, :content, :name, :tag_list
  acts_as_taggable
  validates :name,  :presence => true
  has_many :comments, :dependent => :destroy 
  has_many :taggings 
  has_many :tags, through: :taggings

  def self.tagged_with(name)
    Tag.find_by_name!(name).integrate_developments
  end

  def self.tag_counts
    Tag.select("tags.*, count(taggings.tag_id) as count").
      joins(:taggings).group("taggings.tag_id")
  end

  def tag_list
    tags.map(&:name).join(", ")
  end

  def tag_list=(names)
    self.tags = names.split(",").map do |n|
      Tag.where(name: n.strip).first_or_create!
    end
  end
end
