class CreateMusics < ActiveRecord::Migration[5.2]
  def change
    create_table :musics do |t|
      t.string :name
      t.boolean :explicit
      t.belongs_to :album
      t.belongs_to :gender
      t.timestamps
    end
  end
end
