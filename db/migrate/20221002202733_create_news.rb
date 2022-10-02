class CreateNews < ActiveRecord::Migration[7.0]
  def change
    create_table :news do |t|
      t.string :encabezado
      t.text :cuerpo
      t.string :link
      t.integer :tipo

      t.timestamps
    end
  end
end
