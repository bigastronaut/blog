class CreateTaggings < ActiveRecord::Migration
  def change
    create_table :blog_taggings, force: true do |t|
      t.integer :post_id
      t.integer :tag_id
    end

    add_index :blog_taggings, ["post_id"], name: "index_blog_taggings_on_post_id", using: :btree
    add_index :blog_taggings, ["tag_id"], name: "index_blog_taggings_on_tag_id", using: :btree
  end
end
