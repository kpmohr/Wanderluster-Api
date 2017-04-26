class Hotels < ActiveRecord::Migration[5.0]
  def change
    create_table :hotels do |t|
      t.string :hotelName
      t.string :ciDate
      t.string :ciTime
      t.string :coDate
      t.string :coTime
      t.string :hotelLink

      t.belongs_to :trip, foreign_key: true
    end
  end
end
