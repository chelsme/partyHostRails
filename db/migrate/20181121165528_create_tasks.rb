class CreateTasks < ActiveRecord::Migration[5.2]
  def change
    create_table :tasks do |t|
      t.string :task
      t.belongs_to :guest, foreign_key: true
      t.belongs_to :party, foreign_key: true

      t.timestamps
    end
  end
end
