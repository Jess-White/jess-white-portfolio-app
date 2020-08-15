class AddFrontendUrlImageToPortfolioProjects < ActiveRecord::Migration[6.0]
  def change
    add_column :portfolio_projects, :project_image_url_frontend, :string
  end
end
