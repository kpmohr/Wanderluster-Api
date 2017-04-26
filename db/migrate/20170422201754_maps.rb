class Maps < ActiveRecord::Migration[5.0]
  def change
    create_table :maps do |t|
      t.string :mapLink

      t.belongs_to :trip, foreign_key: true
    end
  end
end
