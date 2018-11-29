class CreateGuests < ActiveRecord::Migration[5.2]
  def change
    create_table :guests do |t|
      t.string :name
      t.string :username
      t.string :password, :default => ""
      t.string :picture

      t.timestamps
    end
  end
end
