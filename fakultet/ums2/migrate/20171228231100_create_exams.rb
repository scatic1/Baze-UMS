class CreateExams < ActiveRecord::Migration[5.1]
  def change
    create_table :exams do |t|
      t.datetime :exam_time
      t.string :exam_place
      t.references :subject, foreign_key: true
    end
  end
end
