class CreateJobAdvertisements < ActiveRecord::Migration[5.1]
  def change
    create_table :job_advertisements do |t|
      t.string :work_position

      t.timestamps
    end
  end
end
