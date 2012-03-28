class CreateItps < ActiveRecord::Migration
  def change
    create_table :itps do |t|
      t.string :nr_auto
      t.datetime :data_expirarii
      t.datetime :programare
      t.text :observatii
      t.references :client

      t.timestamps
    end
    add_index :itps, :client_id
  end
end
