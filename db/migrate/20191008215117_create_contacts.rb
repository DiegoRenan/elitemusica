class CreateContacts < ActiveRecord::Migration[5.2]
  def change
    create_table :contacts do |t|
      t.string :rua
      t.string :numero
      t.string :cep
      t.string :cidade
      t.string :uf
      t.string :phone_cell
      t.string :phone_fixed
      t.string :whatsapp
      t.string :att_week
      t.string :att_weekend
      t.string :email
      t.string :facebook
      t.string :instagram

      t.timestamps
    end
  end
end
