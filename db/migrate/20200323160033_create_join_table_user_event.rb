class CreateJoinTableUserEvent < ActiveRecord::Migration[6.0]
  def change
    create_join_table :users, :events, table_name: :rsvps do |t|
      t.index [:user_id, :event_id]
      t.index [:event_id, :user_id]
    end
  end
end
