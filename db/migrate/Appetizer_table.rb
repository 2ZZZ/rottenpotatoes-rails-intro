# File: initial_migration.rb 
#Create Appetizer_table
class CreateAppetizer <ActiveRecord::Migration
  def change
    create table (:APPETIZER, id false) do |t| #do not generate defult key
      t.column :APPTZR_ID, string             #primery key, Appetizer_ID
      t.column :APPTZR_NAME, string, limit :60
      t.column :APPTZR_INGREDIENT_DESCPTN, string, limit :160
      t.column :CUSTMZ_INGRDT_ID, string      #foreign key, Customize_Ingredient_ID
      t.timestamps   
     # Add fields that let Rails automatically keep track
     # of when APPETIZER are updated
    end
  end
end     
