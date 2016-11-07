# File: initial_migration.rb 
#Create Dessert_table
class CreateDessert_table <ActiveRecord::Migration
  def change
    create table (:DESSERT, id false) do |t| #do not generate defult key
      t.column :DESSERT_ID, string             #primery key, DESSERT_ID
      t.column :DESSERT_NAME, string, limit :80
      t.column :DESSERT_INGREDIENT_DESCPTN, string, limit :200
      t.column :CUSTMZ_INGRDT_ID, string      #foreign key, Customize_Ingredient_ID
      t.timestamps   
     # Add fields that let Rails automatically keep track
     # of when DESSERT are updated
    end
  end
end 
