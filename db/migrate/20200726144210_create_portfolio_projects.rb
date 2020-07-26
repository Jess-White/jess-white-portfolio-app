class CreatePortfolioProjects < ActiveRecord::Migration[6.0]
  def change
    create_table :portfolio_projects do |t|
      t.string :project_title
      t.text :project_summary
      t.string :project_image_url
      t.string :project_video_link
      t.string :project_github_link
      t.string :project_deploy_link

      t.timestamps
    end
  end
end
