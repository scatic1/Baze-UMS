class RenameStudents < ActiveRecord::Migration[5.1]
  def self.up
    rename_table :students, :results
  end

  def self.down
    rename_table :results, :students
  end
end
