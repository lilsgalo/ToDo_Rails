class CreateTodos < ActiveRecord::Migration[6.1]
  def change
    create_table :todos do |t|
      t.string :titulo
      t.text :descricao

      t.timestamps
    end
  end
end
