class CreatePosts < ActiveRecord::Migration[5.1]
  def change
    create_table :posts do |t|
      t.string  :title
      t.string  :picture
      t.text    :content
      t.integer :counter, default: 0

      t.timestamps
    end
  end
end
