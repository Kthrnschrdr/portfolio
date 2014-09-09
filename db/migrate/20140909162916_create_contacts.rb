class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
      t.string :name
      t.integer :message
      t.string :email
      t.string :subject

      t.timestamps
    end
  end
end
