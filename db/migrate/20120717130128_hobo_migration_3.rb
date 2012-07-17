class HoboMigration3 < ActiveRecord::Migration
  def self.up
    add_column :alumnos, :telefono, :string

    add_column :cursos, :lugar, :string
    add_column :cursos, :descripcion, :text
  end

  def self.down
    remove_column :alumnos, :telefono

    remove_column :cursos, :lugar
    remove_column :cursos, :descripcion
  end
end
