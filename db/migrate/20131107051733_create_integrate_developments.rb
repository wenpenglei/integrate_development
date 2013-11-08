class CreateIntegrateDevelopments < ActiveRecord::Migration
  def change
    create_table :integrate_developments do |t|
      t.string :name
      t.string :title
      t.text :content

      t.timestamps
    end
  end
end
