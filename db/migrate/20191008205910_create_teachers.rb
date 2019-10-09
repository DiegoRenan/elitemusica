class CreateTeachers < ActiveRecord::Migration[5.2]
  def change
    create_table :teachers do |t|
      t.string :name
      t.string :job
      t.string :facebook
      t.string :instagram

      t.timestamps
    end
  end
end
