class RemoveTextFromEvents < ActiveRecord::Migration
  def change
    remove_column :events, :text, :string
  end
end
