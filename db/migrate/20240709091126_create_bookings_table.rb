class CreateBookingsTable < ActiveRecord::Migration[7.1]
  def change
    create_table :bookings do |t|
      t.date :start_date
      t.date :end_date
      t.decimal :total_price
      t.references :user, null: false, foreign_key: true
      t.string :status
      t.references :bag, null: false, foreign_key: true

      t.timestamps
    end
  end
end
