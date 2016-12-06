class CreateMembershipPlans < ActiveRecord::Migration[5.0]
  def change
    create_table :membership_plans do |t|
      t.string :name
      t.decimal :price
      t.timestamps
    end
  end
end
