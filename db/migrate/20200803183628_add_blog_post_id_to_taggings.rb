class AddBlogPostIdToTaggings < ActiveRecord::Migration[6.0]
  def change
    add_column :taggings, :blog_post_id, :integer
  end
end
