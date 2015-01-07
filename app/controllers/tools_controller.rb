class ToolsController < ApplicationController
  def create
    @tool = Tool.new(tool_params)
    @tool.save
  end

  def show
    @tool = Tool.find(params[:id])
  end

  private

  def tool_params
    params.require(:tool).permit([:url, :tag_list])
  end
end
