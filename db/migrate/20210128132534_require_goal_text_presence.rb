class RequireGoalTextPresent < ActiveRecord::Migration[6.1]
  def change
    change_column_null(:goals, :text, false)
  end
end
