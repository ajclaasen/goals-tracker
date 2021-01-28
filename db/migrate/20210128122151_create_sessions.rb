class CreateSessions < ActiveRecord::Migration[6.1]
  def change
    create_table :sessions do |t|
      t.number :number

      t.timestamps
    end
  end
end
