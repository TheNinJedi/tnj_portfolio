class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :title
      t.string :url
      t.text :description
      t.datetime :created_at
      t.datetime :published_at
      t.string :stats
      t.string :seo_title
      t.string :seo_description
      t.belongs_to :user

      t.timestamps
    end
    add_index :projects, :user_id
  end
end
