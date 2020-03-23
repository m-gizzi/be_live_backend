class CreateEvents < ActiveRecord::Migration[6.0]
  def change
    create_table :events do |t|
      t.string :title
      t.datetime :start_date
      t.datetime :end_date
      t.boolean :ongoing
      t.text :description
      t.boolean :private
      t.string :url
      t.string :img_url

      t.timestamps
    end
  end
end
