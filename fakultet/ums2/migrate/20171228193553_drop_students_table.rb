class DropStudentsTable < ActiveRecord::Migration[5.1]
  def up
      drop_table :students
    end

    def down
      raise ActiveRecord::IrreversibleMigration
    end
end
