class CreateBetraeges < ActiveRecord::Migration
  def change
    create_table :betraeges do |t|
      t.string :vorname
      t.string :name
      t.string :email
      t.decimal :betrag, :precision => 7, :scale => 2

      t.timestamps
    end
  end
end
