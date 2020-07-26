

ActiveRecord::Schema.define(version: 2020_07_26_144210) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "blog_posts", force: :cascade do |t|
    t.string "post_title"
    t.text "post_content"
    t.string "post_image_url"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "portfolio_projects", force: :cascade do |t|
    t.string "project_title"
    t.text "project_summary"
    t.string "project_image_url"
    t.string "project_video_link"
    t.string "project_github_link"
    t.string "project_deploy_link"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
