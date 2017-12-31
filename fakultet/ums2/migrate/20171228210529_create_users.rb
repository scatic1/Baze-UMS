class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :name
      t.string :surname
      t.integer :JMBG
      t.date :date_of_birth
      t.string :place_of_birth
      t.string :phone
      t.string :email
      t.string :gender
      t.string :username
      t.string :password_digest
      t.string :category
    end
  end
end
