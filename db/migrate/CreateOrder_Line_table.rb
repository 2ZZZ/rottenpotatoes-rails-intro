# File: initial_migration.rb 
#Create ORDER_LINE_table
class CreateOrder_Line_table <ActiveRecord::Migration
  def change
    create table (:ORDER_LINE, id false) do |t| #do not generate defult key
      t.column :ORDER_LINE_ID, string             #primery key, 
      t.column :MEAL_ID, string,                  #forienge key
      t.column :CUSTMR_ID, string                 #forienge key
      t.column :PRICE_ID, string                  #forienge key
     # Add fields that let Rails automatically keep track
     # of when PRICE_ID are updated 
      t.timestamps   
    end
  end
end 
