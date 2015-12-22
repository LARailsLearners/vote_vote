class AddVoteToTopics < ActiveRecord::Migration
  def change
    add_column :topics, :vote, :integer
  end
end
