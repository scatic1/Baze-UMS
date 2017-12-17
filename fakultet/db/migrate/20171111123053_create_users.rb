class CreateUsers < ActiveRecord::Migration[5.1]
  def connection
    ActiveRecord::Base.establish_connection("#{Rails.env}_sec").connection
  end
  def change
    create_table :users do |t|
      t.string :name
      t.string :surname
      t.string :JMBG
      t.date :date_of_birth
      t.string :place_of_birth
      t.string :phone
      t.string :email
      t.string :gender
      t.string :username
      t.string :password_digest
      t.string :category

      t.timestamps
    end
  end
end
