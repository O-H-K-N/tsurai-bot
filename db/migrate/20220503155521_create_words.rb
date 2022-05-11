class CreateWords < ActiveRecord::Migration[6.1]
  def change
    create_table :words do |t|
      t.string :text, null: false
      t.text :message, null: false

      t.timestamps
    end
  end
end
