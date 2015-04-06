class CreateReflections < ActiveRecord::Migration
  def change
    create_table :reflections do |t|
      t.string :book_title, null: false
      t.string :author, null: false
      t.date :start_date, null: false
      t.date :finish_date, null: false
      t.text :reflection_content, null: false
      t.integer :book_rating, null: false
      t.references :user, null: false
      t.timestamps
    end
  end
end
