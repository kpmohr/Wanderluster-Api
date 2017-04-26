class Profiles < ActiveRecord::Migration[5.0]
  def change
    create_table :profiles do |t|
      t.string :name
      t.string :bio
      t.string :image

      t.belongs_to :user, foreign_key: true
    end
  end
end
