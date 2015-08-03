class AddEventIdToCategories < ActiveRecord::Migration
  def change
    add_reference :categories, :event, index: true, foreign_key: true
  end
end
