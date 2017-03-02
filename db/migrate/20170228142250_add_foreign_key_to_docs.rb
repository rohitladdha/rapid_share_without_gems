class AddForeignKeyToDocs < ActiveRecord::Migration[5.0]
  def change
    add_reference :docs, :user
  end
end
