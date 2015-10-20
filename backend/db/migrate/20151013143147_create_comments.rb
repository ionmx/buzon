class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.references :post
      t.references :user
      t.text       :content
      t.timestamps null: false
    end
    add_index(:comments, :post_id)
    add_index(:comments, :user_id)
  end
end
    