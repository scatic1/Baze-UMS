class AddMarkToStudents < ActiveRecord::Migration[5.1]
  def change
    add_column :students, :mark, :integer
  end
end
