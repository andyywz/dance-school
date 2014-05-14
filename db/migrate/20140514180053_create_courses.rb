class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses do |t|
      t.string :name, null: false
      t.string :dance_style, null: false
      t.string :instructor, default: "TBA"
      t.string :venue, default: "TBA"
      t.text :description, default: "No description"
      t.integer :price, default: 0
      t.date :date
      t.time :time
      
      t.timestamps
    end
  end
end
