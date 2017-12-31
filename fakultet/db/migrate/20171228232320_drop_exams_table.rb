class DropExamsTable < ActiveRecord::Migration[5.1]
  def up
     drop_table :exams
   end

   def down
     raise ActiveRecord::IrreversibleMigration
   end
end
