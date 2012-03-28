class CreateClients < ActiveRecord::Migration
  def change
    create_table :clients do |t|
      t.string :nume
      t.string :prenume
      t.string :telefon
      t.string :mail

      t.timestamps
    end
  end
end
