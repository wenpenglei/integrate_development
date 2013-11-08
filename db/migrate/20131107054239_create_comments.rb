class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :commenter
      t.text :body
      t.references :integrate_development

      t.timestamps
    end
    add_index :comments, :integrate_development_id
  end
end
