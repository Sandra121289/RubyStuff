class CreateBetraeges < ActiveRecord::Migration
  def change
    create_table :betraeges do |t|
      t.string :name
      t.decimal :betrag, :precision => 7, :scale => 2

      t.timestamps
    end
  end
end
