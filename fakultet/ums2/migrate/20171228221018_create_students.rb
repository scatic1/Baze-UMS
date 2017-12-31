class CreateStudents < ActiveRecord::Migration[5.1]
  def change
    create_table :students do |t|
      t.integer :index
      t.integer :ects
      t.integer :year
      t.references :user, foreign_key: true
    end
  end
end
