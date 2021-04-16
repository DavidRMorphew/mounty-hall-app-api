class CreateGames < ActiveRecord::Migration[6.0]
  def change
    create_table :games do |t|
      t.string :door1
      t.string :door2
      t.string :door3
      t.string :original_pick
      t.string :host_reveal
      t.boolean :user_switch
      t.boolean :user_win
      t.belongs_to :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
