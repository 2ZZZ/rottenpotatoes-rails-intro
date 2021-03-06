 File: initial_migration.rb 
#Create Custom_Ingredient_table
class CreateCustom_Ingredient_table <ActiveRecord::Migration
  def change
    create table (:CUSTOM_INGREDIENT, id false) do |t| #do not generate defult key
      t.column :CUSTOM_INGRDT_ID, string             #primery key, CUSTOM_INGREDIENT_ID
      t.column :INGREDIENT_NAME, string, limit :60
      t.column :SELECTED_PORTION_ID, string          #foreign key, Custom_Ingredient_ID
      t.timestamps   
     # Add fields that let Rails automatically keep track
     # of when CUSTOM_INGREDIENTS are updated
    end
  end
end 
