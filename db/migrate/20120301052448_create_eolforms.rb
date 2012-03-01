class CreateEolforms < ActiveRecord::Migration
  def change
    create_table :eolforms do |t|
      t.string :name
      t.date :dob
      t.string :ad_street1
      t.string :ad_street2
      t.string :ad_city
      t.string :ad_state
      t.integer :ad_zip
      t.string :phone_number
      t.string :s1_agent_name
      t.string :s1_home_phone
      t.string :s1_cell_phone
      t.string :s1_street1
      t.string :s1_street2
      t.string :s1_city
      t.string :s1_state
      t.integer :s1_zip
      t.string :s1_relationship
      t.string :s2_agent_name
      t.string :s2_home_phone
      t.string :s2_cell_phone
      t.string :s2_street1
      t.string :s2_street2
      t.string :s2_city
      t.string :s2_state
      t.integer :s2_zip
      t.string :s2_relationship
      t.string :s3_agent_name
      t.string :s3_home_phone
      t.string :s3_cell_phone
      t.string :s3_street1
      t.string :s3_street2
      t.string :s3_city
      t.string :s3_state
      t.integer :s3_zip
      t.string :s3_relationship
      t.text :statement
      t.string :choice1
      t.text :choice1_comments
      t.string :choice2
      t.text :choice2_comments
      t.string :choice3
      t.text :choice3_comments

      t.timestamps
    end
  end
end
