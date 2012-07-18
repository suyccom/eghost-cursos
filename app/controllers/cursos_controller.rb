class CursosController < ApplicationController

  hobo_model_controller

  auto_actions :all

  def index
    @total_alumnos = Alumno.count
    @total_cursos = Curso.count
    hobo_index
  end

end
