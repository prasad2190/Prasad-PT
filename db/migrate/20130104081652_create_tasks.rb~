class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
    t.integer "project_id"
    t.string "name"
    t.date "start_date"
    t.date "end_date"
    t.string "status"
    t.timestamps
    end
    add_index("tasks","project_id")
  end
end
