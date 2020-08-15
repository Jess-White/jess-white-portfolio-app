class AddBackendUrlImageToPortfolioProjects < ActiveRecord::Migration[6.0]
  def change
    add_column :portfolio_projects, :project_image_url_backend, :string
  end
end
