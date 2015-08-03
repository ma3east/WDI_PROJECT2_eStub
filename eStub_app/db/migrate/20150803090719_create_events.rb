class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.text :name
      t.date :date
      t.text :venue
      t.string :city
      t.float :price
      t.string :stub_file_upload
      t.string :text
      t.text :event_url
      t.integer :rating
      t.string :accompanied_by
      t.text :description

      t.timestamps null: false
    end
  end
end
