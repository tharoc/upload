class CreateSpells < ActiveRecord::Migration[6.0]
  def change
    create_table :spells do |t|
      t.string :name
      t.string :school
      t.string :subschool
      t.text :descriptor

      t.timestamps
    end
  end
end
