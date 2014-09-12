class CreateLikes < ActiveRecord::Migration
  def change
    create_table :likes do |t|
      t.string :article_id
      t.string :ip_address

      t.timestamps
    end
  end
end
