class CreateGoals < ActiveRecord::Migration[6.1]
  def change
    create_table :goals do |t|
      t.string :text
      t.integer :reward

      t.timestamps
    end
  end
end
