class TareasController < ApplicationController
  before_action :set_usuario
  before_action :set_tarea, only: [:show, :update, :destroy]
  before_action :authenticate_usuario



  # GET /tareas
  def index
    @tareas = @usuario.tareas

    render json: @tareas
  end

  # GET /tareas/1
  def show
    render json: @tarea
  end

  # POST /tareas
  def create
    @tarea = @usuario.tareas.build(tarea_params)

    if @tarea.save
      render json: @tarea, status: :created
    else
      render json: @tarea.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /tareas/1
  def update
    if @tarea.update(tarea_params)
      render json: @tarea
    else
      render json: @tarea.errors, status: :unprocessable_entity
    end
  end

  # DELETE /tareas/1
  def destroy
    @tarea.destroy
  end

  private
  def set_usuario
    # Use callbacks to share common setup or constraints between actions.
      @usuario= Usuario.find(params[:usuario_id])
    end
    def set_tarea
      @tarea = Tarea.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def tarea_params
      params.require(:tarea).permit(:titulo, :finalizada)
    end
end
