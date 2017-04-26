class Cities < ActiveRecord::Migration[5.0]
  def change
    create_table :cities do |t|
      t.string :cityName
      t.string :countryName
      t.string :startDate
      t.string :endDate
      t.string :transportIn
      t.string :transportOut

      t.belongs_to :trip, foreign_key: true
    end
  end
end
