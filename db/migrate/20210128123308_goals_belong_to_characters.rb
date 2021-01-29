class GoalsBelongToCharacters < ActiveRecord::Migration[6.1]
  def change
    change_table :goals do |t|
      t.belongs_to :character
    end
  end
end
