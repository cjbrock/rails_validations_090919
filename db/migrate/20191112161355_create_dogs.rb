class CreateDogs < ActiveRecord::Migration[6.0]
  def change
    create_table :dogs do |t|
      t.string :name
      t.string :fur_color
      t.string :breed
      t.string :bones
      t.string :owner

      t.timestamps
    end
  end
end
