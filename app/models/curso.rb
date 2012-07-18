class Curso < ActiveRecord::Base

  hobo_model # Don't put anything above this

  fields do
    titulo :string, :name => true
    fecha  :date
    lugar  :string
    descripcion :text
    timestamps
  end
  
  has_many :curso_alumnos
  has_many :alumnos, :through => :curso_alumnos, :accessible => true
  has_many :category_cursos
  has_many :categories, :through => :category_cursos, :accessible => true

  children :alumnos

  # Columnas para las búsquedas globales
  set_search_columns :titulo

  # --- Permissions --- #

  def create_permitted?
    acting_user.administrator?
  end

  def update_permitted?
    acting_user.administrator?
  end

  def destroy_permitted?
    acting_user.administrator?
  end

  def view_permitted?(field)
    true
  end

end
