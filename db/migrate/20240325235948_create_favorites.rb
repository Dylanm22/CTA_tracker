class CreateFavorites < ActiveRecord::Migration[7.0]
  def change
    create_table :favorites do |t|
      t.references :user, null: false, foreign_key: true
      t.references :station, null: false, foreign_key: true
      t.references :notification_time, null: false, foreign_key: true

      t.timestamps
    end
  end
end
