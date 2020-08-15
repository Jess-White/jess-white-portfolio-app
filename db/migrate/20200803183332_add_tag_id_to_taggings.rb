class AddTagIdToTaggings < ActiveRecord::Migration[6.0]
  def change
    add_column :taggings, :tag_id, :integer
  end
end
