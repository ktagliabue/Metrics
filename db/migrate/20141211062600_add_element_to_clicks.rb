class AddElementToClicks < ActiveRecord::Migration
  def change
    add_column :clicks, :element, :string
  end
end
