class AddPhotoToProjects < ActiveRecord::Migration
  def up
    add_column :projects, :photo, :string
  end
end
