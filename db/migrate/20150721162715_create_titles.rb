class CreateTitles < ActiveRecord::Migration
  def change
    create_table :titles do |t|
      t.string :link
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
