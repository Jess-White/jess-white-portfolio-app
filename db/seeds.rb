# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


BlogPost.create(post_title: "Test Blog Post 1", post_content: "This is the test text for my first blog post", post_image_url: "fake_url.com")

BlogPost.create(post_title: "Test Blog Post 2", post_content: "This is the test text for my second blog post", post_image_url: "fake_url.com")

PortfolioProject.create(project_title: "Test Portfolio Project 1", project_summary: "This is the test summary for my first portfolio project", project_image_url: "fake_url.com", project_video_link: "fake_url.com", project_github_link: "fake_url.com", project_deploy_link: "fake_url.com")

PortfolioProject.create(project_title: "Test Portfolio Project 2", project_summary: "This is the test summary for my second portfolio project", project_image_url: "fake_url.com", project_video_link: "fake_url.com", project_github_link: "fake_url.com", project_deploy_link: "fake_url.com")

User.create(name: "Jess White", email: "jess_white.chicago@gmail.com", password: "MargaretDax15578", password_confirmation: "MargaretDax15578" )