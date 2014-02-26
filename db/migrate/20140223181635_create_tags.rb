class CreateTags < ActiveRecord::Migration
  def change
    create_table :blog_tags, force: true do |t|
      t.string :name
    end

    add_index :blog_tags, ["name"], name: "index_blog_tags_on_name", using: :btree
  end
end
