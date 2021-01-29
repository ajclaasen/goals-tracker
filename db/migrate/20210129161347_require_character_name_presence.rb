class RequireCharacterNamePresence < ActiveRecord::Migration[6.1]
  def change
    change_column_null(:characters, :name, false)
  end
end
