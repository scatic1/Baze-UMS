class CreateStudents < ActiveRecord::Migration[5.1]
  def change
    create_table :students do |t|
      t.string :name
      t.string :surname
      t.integer :jmbg
      t.date :birthday
      t.string :placebirth
      t.integer :telephone
      t.string :email
      t.string :gender
      t.string :username
      t.string :password
      t.string :category
      t.integer :index
      t.integer :ects
      t.integer :year

      t.timestamps
    end
  end
end
