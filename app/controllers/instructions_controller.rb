class InstructionsController < ApplicationController
  before_filter :find_how_to_list
  before_filter :find_instruction, :only => [:show, :edit, :update, :destroy]

  def new
    @instruction = @how_to_list.instructions.build
  end

  def create
    @instruction = @how_to_list.instructions.build(params[:instruction])
    if @instruction.save
      flash[:notice] = "Instruction has been created."
      redirect_to [@how_to_list, @instruction]
    else
      flash[:alert] = "Instruction has not been created."
      render :action => "new"
    end
  end

  def show
  end

  def edit
  end

  def update
    if @instruction.update_attributes(params[:instruction])
      flash[:notice] = "Instruction has been updated."
      redirect_to [@how_to_list, @instruction]
    else
      flash[:alert] = "Instruction has not been updated."
      render :action => "edit"
    end
  end

  def destroy
    @instruction.destroy
    flash[:notice] = "Instruction has been deleted."
    redirect_to @how_to_list
  end

private
  def find_how_to_list
    @how_to_list = HowToList.find(params[:how_to_list_id])
  end

  def find_instruction
    @instruction = @how_to_list.instructions.find(params[:id])
  end
end
