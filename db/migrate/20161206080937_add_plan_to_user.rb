class AddPlanToUser < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :membership_plan_id, :integer
  end
end
