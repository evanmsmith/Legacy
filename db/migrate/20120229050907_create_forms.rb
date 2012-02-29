class CreateForms < ActiveRecord::Migration
  def change
    create_table :forms do |t|
      t.integer :user_id
      t.string :string
      t.datetime :date

      t.timestamps
    end
  end
end
