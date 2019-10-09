class CreatePublics < ActiveRecord::Migration[5.2]
  def change
    create_table :publics do |t|
      t.string :title
      t.text :resume

      t.timestamps
    end
  end
end
