class DropTareasUser < ActiveRecord::Migration[5.2]
  def change
    drop_table :tareas_users
  end
end
