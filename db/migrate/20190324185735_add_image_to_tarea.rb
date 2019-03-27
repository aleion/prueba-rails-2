class AddImageToTarea < ActiveRecord::Migration[5.2]
  def change
    add_column :tareas, :image, :string
  end
end
