class CreateProfessors < ActiveRecord::Migration
  def change
    create_table :professors do |t|
      t.string :nome
      t.text :desc
      t.string :location
      t.string :id_departament
      t.integer :helpfulness
      t.integer :clarity
      t.integer :easiness
      t.integer :hotness

      t.timestamps
    end
  end
end
