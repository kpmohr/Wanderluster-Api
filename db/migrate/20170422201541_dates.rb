class Dates < ActiveRecord::Migration[5.0]
  def change
    create_table :dates do |t|
      t.string :startDate
      t.string :endDate

      t.belongs_to :trip, foreign_key: true
    end
  end
end
