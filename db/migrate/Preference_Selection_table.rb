# File: initial_migration.rb 
#Create INGREDIENT_SELECTION_table
class CreatePreference_Selection_table <ActiveRecord::Migration
  def change
    create table (:PREFERENCE_SELECTION, id false) do |t| #do not generate defult key
      t.column :SELECTED_PREFERENCE_ID, string             #primery key, SELECTED_PREFERENCE_ID
      t.column :PREFERENCE_DESCRIPTION, string, limit :30   # no forienge key
     # Add fields that let Rails automatically keep track
     # of when PREFERENCE_SELECTION are updated 
      t.timestamps   
    end
  end
end 
