class ChangeBackendUrlImageInPortfolioProjects < ActiveRecord::Migration[6.0]
  def change
    rename_column :portfolio_projects, :project_image_url_backend, :project_github_url_backend
  end
end
