class AddBimestreToMateria < ActiveRecord::Migration[5.1]
  def change
    add_column :materia, :bimestre, :integer
  end
end
