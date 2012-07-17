class HoboMigration4 < ActiveRecord::Migration
  def self.up
    add_column :alumnos, :genero, :string
  end

  def self.down
    remove_column :alumnos, :genero
  end
end
