class Trips < ActiveRecord::Migration[5.0]
  def change
    create_table :trips do |t|
      t.string :tripName
      t.string :tripDescription

      t.belongs_to :user, foreign_key: true
    end
  end
end
