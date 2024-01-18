class CreatePosts < ActiveRecord::Migration[7.0]
  def change
    create_table :posts do |t|
      t.string :title
      t.text :body
      t.boolean :published
      t.date :published_date
      t.string :image
      t.references :admin_user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
