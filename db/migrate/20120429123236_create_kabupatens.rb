class CreateKabupatens < ActiveRecord::Migration
  def change
    create_table :kabupatens do |t|
      t.string :name
      t.text :description_en
      t.text :description_id
      t.integer :area
      t.integer :population
      t.integer :province_id

      t.timestamps
    end
  end
end
