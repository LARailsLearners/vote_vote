class CreateTopics < ActiveRecord::Migration
  def change
    create_table :topics do |t|
      t.string :resolution

      t.timestamps null: false
    end
  end
end
