class CreateParties < ActiveRecord::Migration[5.2]
  def change
    create_table :parties do |t|
      t.integer :host_id
      t.string :name
      t.string :date
      t.string :time
      t.string :location

      t.timestamps
    end
  end
end
