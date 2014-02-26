class CreatePosts < ActiveRecord::Migration
  def change
    create_table :blog_posts, force: true do |t|
      t.boolean  :published
      t.datetime :created_at
      t.datetime :updated_at
      t.integer  :user_id
      t.string   :title
      t.text     :content
      t.string   :url
      t.string   :image
      t.datetime :published_at
    end

    add_index :blog_posts, ["url"], name: "index_blog_posts_on_url", unique: true, using: :btree
  end
end
