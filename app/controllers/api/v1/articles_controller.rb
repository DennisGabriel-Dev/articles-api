class Api::V1::ArticlesController < ApplicationController
  def index
    @message = "Articles"
    @articles = Article.all
    render status: :ok
  end
end
