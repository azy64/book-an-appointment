class CreateReservations < ActiveRecord::Migration[7.0]
  def change
    create_table :reservations do |t|
      t.string :reservation_time
      t.string :date

      t.timestamps
    end
  end
end
