class TodoListsController < ApplicationController
  before_action :set_note

  def create
    @todo_list = @note.todo_lists.create(todo_list_params)
    if @todo_list.save
      redirect_to @note
    else
      redirect_to :back, notice: 'New todo item was not successfully created'
    end
  end

  def destroy
    @todo_list = @note.todo_lists.find(params[:id])
    @todo_list.destroy
    redirect_to @note
  end

  private

  def set_note
    @note = Note.find(params[:note_id])
  end

  def todo_list_params
    params.require(:todo_list).permit(:content)
  end
end