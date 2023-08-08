class CreateJoinTableBookingPassenger < ActiveRecord::Migration[7.0]
  def change
    create_join_table :bookings, :passengers, id: false do |t|
      t.index [:booking_id, :passenger_id], unique: true
    end
  end
end
