class CreateMateria < ActiveRecord::Migration[5.1]
  def change
    create_table :materia do |t|
      t.string :materia
      t.float :nota_mensal
      t.float :nota_bimestral
      t.integer :bimestre

      t.timestamps
      end
  end
end
