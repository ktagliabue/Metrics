class Addpageviewstousers < ActiveRecord::Migration
  def change
    add_column :pageviews, :user_id, :integer
  end
end
