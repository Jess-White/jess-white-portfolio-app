class AddLanguageToPortfolioProjects < ActiveRecord::Migration[6.0]
  def change
    add_column :portfolio_projects, :language, :string
  end
end
