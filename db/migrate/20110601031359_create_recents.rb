class CreateRecents < ActiveRecord::Migration
  def self.up
    create_table :recents do |t|
      t.string :input
      t.string :output

      t.timestamps
    end
  end

  def self.down
    drop_table :recents
  end
end
