class AddBlurbToBlogPosts < ActiveRecord::Migration[6.0]
  def change
    add_column :blog_posts, :blurb, :text
  end
end
