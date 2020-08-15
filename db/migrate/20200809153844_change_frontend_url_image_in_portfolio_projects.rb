class ChangeFrontendUrlImageInPortfolioProjects < ActiveRecord::Migration[6.0]
  def change
    rename_column :portfolio_projects, :project_image_url_frontend, :project_github_url_frontend
  end
end