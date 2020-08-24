class Api::PortfolioProjectsController < ApplicationController

  def index
    @portfolio_projects = PortfolioProject.all
    @portfolio_projects = @portfolio_projects.order(id: :desc)
    render "index.json.jb"
  end

  def create
    @portfolio_project = PortfolioProject.new(
      project_title: params[:project_title],
      project_summary: params[:project_summary],
      language: params[:language],
      project_image_url: params[:project_image_url],
      project_video_link: params[:project_video_link],
      project_github_url_frontend: params[:project_github_url_frontend],
      project_github_url_backend: params[:project_github_url_backend],
      project_deploy_link: params[:project_deploy_link]
      )
    if @portfolio_project.save
      render "show.json.jb"
    else
      render json: { errors: @portfolio_project.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def show
    @portfolio_project = PortfolioProject.find(params[:id])
    render "show.json.jb"
  end

  def update
    @portfolio_project = PortfolioProject.find(params[:id])
    @portfolio_project.project_title = params[:project_title] || @portfolio_project.project_title
    @portfolio_project.project_summary = params[:project_summary] || @portfolio_project.project_summary
    @portfolio_project.language = params[:language] || @portfolio_project.language
    @portfolio_project.project_image_url = params[:project_image_url] || @portfolio_project.project_image_url
    @portfolio_project.project_video_link = params[:project_video_link] || @portfolio_project.project_video_link
    @portfolio_project.project_github_link = params[:project_github_link] || @portfolio_project.project_github_link
    @portfolio_project.project_github_url_frontend = params[:project_github_url_frontend] || @portfolio_project.project_github_url_frontend
    @portfolio_project.project_github_url_backend = params[:project_github_url_backend] || @portfolio_project.project_github_url_backend
    @portfolio_project.project_deploy_link = params[:project_deploy_link] || @portfolio_project.project_deploy_link
    if @portfolio_project.save
      render "show.json.jb"
    else
      render json: { errors: @portfolio_project.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def destroy
    @portfolio_project = PortfolioProject.find(params[:id])
    @portfolio_project.destroy
    render json: { message: "PortfolioProject successfully destroyed" }
  end

end
