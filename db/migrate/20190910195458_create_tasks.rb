class CreateTasks < ActiveRecord::Migration[5.2]
  def change
    create_table :tasks do |t|
      t.string :name
      t.integer :project_id
      t.integer :status

      t.timestamps
    end
  end
end
