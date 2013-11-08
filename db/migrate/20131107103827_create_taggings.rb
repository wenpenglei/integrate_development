class CreateTaggings < ActiveRecord::Migration
  def change
    create_table :taggings do |t|
      t.belongs_to :tag
      t.belongs_to :integrate_development

      t.timestamps
    end
    add_index :taggings, :tag_id
    add_index :taggings, :integrate_development_id
  end
end
