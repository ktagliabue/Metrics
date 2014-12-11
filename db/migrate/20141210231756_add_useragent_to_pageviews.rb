class AddUseragentToPageviews < ActiveRecord::Migration
  def change
    add_column :pageviews, :useragent, :string
  end
end
