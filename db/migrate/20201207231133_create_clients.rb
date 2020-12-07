class CreateClients < ActiveRecord::Migration[5.0]
  def change
    create_table :clients do |t|
      t.string :name  
      t.string :email     
      t.decimal :totalIngress 
      t.string :sector
      t.integer :workYears 
      t.integer :amount
      t.integer :frecuency, :default => 1
      t.integer :paytime, :default => 12
      t.timestamps
    end
  end
end
