class CreateTalks < ActiveRecord::Migration[5.0]
  def change
    create_table :talks do |t|
      t.string :topic
      t.integer :duration

      t.timestamps
    end
  end
end
