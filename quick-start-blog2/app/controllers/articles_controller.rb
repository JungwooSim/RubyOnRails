class ArticlesController < ApplicationController
  def index
    @article = "ALL"
  end

  # def show
  #   @id = params[:id]
  # end

  def show
    render json: { id: params[:id] }
  end

  def upsert
    # Rails.logger.info "params[:id] : ".params[:id]
    render json: { id: params[:id] }
  end
end