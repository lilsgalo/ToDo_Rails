class TodosController < ApplicationController

  before_action :set_todo, only: [:edit, :update, :destroy, :show]

  def index
    @todos = Todo.all
  end

  def new
    @todo = Todo.new
  end

  def create
    @todo = Todo.new todo_params
    if @todo.save
      flash[:notice] = "Novo ToDo criado!"
      redirect_to root_path
    else
      rendering :new
    end
  end

  def edit
    rendering :edit
  end

  def update
    if @todo.update todo_params
      flash[:notice] = "ToDo editado!"
      rendering :show
    else
      rendering :edit
    end
  end
  
  def destroy
    @todo.destroy
    flash[:notice] = "ToDo excluído!"
    redirect_to root_path
  end

  def show
    rendering :show
  end



  private

  def todo_params
    params.require(:todo).permit(:titulo, :descricao)
  end

  def set_todo
    @todo = Todo.find(params[:id])
  end

  def rendering(view)
    render view
  end
end