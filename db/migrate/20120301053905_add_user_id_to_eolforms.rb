class AddUserIdToEolforms < ActiveRecord::Migration
  def change
    add_column :eolforms, :user_id, :integer
  end
end
