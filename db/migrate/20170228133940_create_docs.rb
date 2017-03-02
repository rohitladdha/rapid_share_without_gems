class CreateDocs < ActiveRecord::Migration[5.0]
  def change
    create_table :docs do |t|
      t.string :name, null: false
      t.timestamps
    end
  end
end
