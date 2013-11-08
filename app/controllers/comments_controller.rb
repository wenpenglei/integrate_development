class CommentsController < ApplicationController
  def create
    @integrate_development = IntegrateDevelopment.find(params[:integrate_development_id])
    @comment = @integrate_development.comments.create(params[:comment])
    redirect_to integrate_development_path(@integrate_development)
  end

  
  def destroy
    @integrate_development = IntegrateDevelopment.find(params[:integrate_development_id])
    @comment = @integrate_development.comments.find(params[:id])
    @comment.destroy
    redirect_to integrate_development_path(@integrate_development)
  end

end
