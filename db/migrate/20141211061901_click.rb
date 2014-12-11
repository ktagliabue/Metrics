class Click < ActiveRecord::Migration
  def change
    create_table :clicks do |t|
      t.string :url

      t.timestamps
    end
  end
end
