class CreatePrenom < ActiveRecord::Migration
  def change
       create_table :prenoms do |t|
       t.string :nom
       t.string :prenom
       t.string :mail
       t.timestamps
       end
   end
end

  
