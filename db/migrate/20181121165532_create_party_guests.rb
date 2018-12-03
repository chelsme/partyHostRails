class CreatePartyGuests < ActiveRecord::Migration[5.2]
  def change
    create_table :party_guests do |t|
      t.integer :party_id
      t.integer :guest_id
      t.string :RSVP, :default => "tbd"

      t.timestamps
    end
  end
end
