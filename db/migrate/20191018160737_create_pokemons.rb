class CreatePokemons < ActiveRecord::Migration[6.0]
  def change
    create_table :pokemons do |t|
      t.string :species
      t.string :image
      t.string :dataId

      t.timestamps
    end
  end
end
