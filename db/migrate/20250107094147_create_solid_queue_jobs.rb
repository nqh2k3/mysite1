class CreateSolidQueueJobs < ActiveRecord::Migration[8.0]
  def change
    create_table :solid_queue_jobs do |t|
      t.string :job_id, null: false
      t.string :queue_name, null: false
      t.text :arguments
      t.datetime :scheduled_at
      t.datetime :performed_at
      t.datetime :failed_at
      t.string :error_message
      t.integer :attempts, default: 0

      t.timestamps
    end

    add_index :solid_queue_jobs, :job_id, unique: true
    add_index :solid_queue_jobs, :queue_name
  end
end
