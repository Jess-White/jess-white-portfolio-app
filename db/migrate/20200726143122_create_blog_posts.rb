class CreateBlogPosts < ActiveRecord::Migration[6.0]
  def change
    create_table :blog_posts do |t|
      t.string :post_title
      t.text :post_content
      t.string :post_image_url

      t.timestamps
    end
  end
end
