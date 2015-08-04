class AddShareToEvent < ActiveRecord::Migration
  def change
    add_column :events, :share, :string
  end
end
