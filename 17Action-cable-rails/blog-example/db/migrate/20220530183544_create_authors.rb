class CreateAuthors < ActiveRecord::Migration[6.1]
  def change
    create_table :authors do |t|
      t.string :First_name
      t.string :last_name
      t.string :description

      t.timestamps
    end
  end
end
