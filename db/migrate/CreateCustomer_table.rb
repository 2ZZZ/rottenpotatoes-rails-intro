# File: initial_migration.rb 
#Create CUSTOMER_table
class CreateCustomer_table <ActiveRecord::Migration
  def change
    create table (:CUSTOMER, id false) do |t| #do not generate defult key
      t.column :CUSTMR_ID, string             #primery key, SELECTED_PREFERENCE_ID
      t.column :CUSTMR_Fname, string, limit :20   
      t.column :CUSTMR_Lname, string, limit :20
      t.column :STREET, string, limit :20
      t.column :CITY, string, limit : 20
      t.column :PHONE_NUM, string, limit 15
      t.column :E_MAIL, string, limit 30
      t.column :DELIVERY_DATE, date
      t.column :EXPECTED_TIME, time
      t.column :ORDER_LINE, string          #foreign key
      
     # Add fields that let Rails automatically keep track
     # of when CUSTOMER are updated 
      t.timestamps   
    end
  end
end 
