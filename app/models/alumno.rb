class Alumno < ActiveRecord::Base

  hobo_model # Don't put anything above this

  fields do
    nombre :string, :required, :name => true
    email  :email_address
    telefono :string
    genero enum_string(:masculino, :femenino)
    timestamps
  end

  has_many :curso_alumnos
  has_many :cursos, :through => :curso_alumnos, :accessible => true

  validates_presence_of :email, :telefono, :curso
 
  # Columnas para las búsquedas globales
  set_search_columns :nombre, :telefono

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
    acting_user.administrator?
  end

end
