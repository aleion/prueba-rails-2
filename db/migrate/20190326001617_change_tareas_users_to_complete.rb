class ChangeTareasUsersToComplete < ActiveRecord::Migration[5.2]
  def change
    rename_table :tareas_users, :complete
  end
end
