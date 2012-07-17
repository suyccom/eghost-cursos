class Alumno < ActiveRecord::Base

  hobo_model # Don't put anything above this

  fields do
    nombre :string, :name => true
    email  :email_address
    telefono :string
    timestamps
  end

  belongs_to :curso

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
