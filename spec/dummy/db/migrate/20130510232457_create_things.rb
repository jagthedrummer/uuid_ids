class CreateThings < ActiveRecord::Migration
  def change
    create_table :things, :id => false do |t|
      t.binary :id, :primary_key => true
      t.timestamps
    end
    add_index :things, :id, :unique => true
  end
end
