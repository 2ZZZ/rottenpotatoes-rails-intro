# File: initial_migration.rb 
#Create Appitizer_table
class CreateAppitizer <ActiveRecord::Migration
  def change
    create table (:APPITIZER, id false do |t| #do not generate defult key
      t.column :APPTZR_ID, string             #primery key
      t.column :APPTZR_NAME, string, limit :60
      t.column :APPTZR_INGREDIENT_DESCPTN, string, limit :160
      t.column :CUSTMZ_INGRDT_ID, string      #foreign key
      t.timestamps   
     # Add fields that let Rails automatically keep track
     # of when APPITIZER are updated
    end
  end
end     
