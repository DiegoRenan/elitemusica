class CreateBios < ActiveRecord::Migration[5.2]
  def change
    create_table :bios do |t|
      t.text :resume
      t.text :bio

      t.timestamps
    end
  end
end
