class PartsController < ApplicationController
  def new
    @project = Project.find(params[:project_id])
    @part = Part.new
  end

  def create
    project = Project.find(params[:project_id])
    part = project.parts.build(part_params)
    if part.save
      redirect_to project, notice: "New Part Added."
    else
      render :new
    end
  end

  private
  def part_params
    params.require(:part).permit(
      :part_number,
      :name,
      :description,
      :datasheet_url
    )
  end
end
