class CreateBlogs < ActiveRecord::Migration[6.0]
  def change
    create_table :blogs do |t|
      t.integer :user_id
      t.string :title,        null: false
      t.text :content
      t.datetime :start_time, null: false
      t.timestamps
    end
  end
end
