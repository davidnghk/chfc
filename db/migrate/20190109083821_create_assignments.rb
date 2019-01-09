class CreateAssignments < ActiveRecord::Migration[5.2]
  def change
    create_table :assignments do |t|
      t.integer :work_id
      t.references :location, foreign_key: true
      t.string :headline
      t.string :start_datetime
      t.datetime :due_datetime
      t.datetime :end_datetime
      t.integer :status
      t.integer :incharge_user_id
      t.integer :worker_user_id

      t.timestamps
    end
  end
end
