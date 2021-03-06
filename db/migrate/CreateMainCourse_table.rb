# File: initial_migration.rb 
#Create MainCourse_table
class CreateMainCourse <ActiveRecord::Migration
  def change
    create table (:MAIN_COURSE, id false) do |t| #do not generate defult key
      t.column :MAIN_CRSE_ID, string             #primery key, MAIN_CORSE_ID
      t.column :MAIN_CRSE_NAME, string, limit :80
      t.column :MAIN_CRSE_INGREDIENT_DESCPTN, string, limit :200
      t.column :CUSTMZ_INGRDT_ID, string      #foreign key, Customize_Ingredient_ID
      t.timestamps   
     # Add fields that let Rails automatically keep track
     # of when MAIN_COURSE are updated
    end
  end
end 
