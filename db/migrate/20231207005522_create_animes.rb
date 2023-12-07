class CreateAnimes < ActiveRecord::Migration[7.0]
  def change
    create_table :animes do |t|
      t.string :title
      t.string :creator
      t.string :main_character
      t.string :episode_count
      t.string :years_run

      t.timestamps
    end
  end
end
