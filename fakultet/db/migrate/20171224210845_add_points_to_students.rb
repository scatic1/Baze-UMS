class AddPointsToStudents < ActiveRecord::Migration[5.1]
  def change
    add_column :students, :points, :float
  end
end
