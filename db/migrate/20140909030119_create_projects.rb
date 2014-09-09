class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :name
      t.string :summary
      t.string :github
      t.string :lesson
      t.string :status

      t.timestamps
    end
  end
end
