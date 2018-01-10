class CreateEvents < ActiveRecord::Migration[5.0]
  def change
    create_table :events do |t|
      t.string :url
      t.string :designer
      t.string :collection
      t.integer :year
      t.text :comments

      t.timestamps
    end
  end
end
