class AddActiveJobIdToSolidQueueJobs < ActiveRecord::Migration[8.0]
  def change
    add_column :solid_queue_jobs, :active_job_id, :string
  end
end
