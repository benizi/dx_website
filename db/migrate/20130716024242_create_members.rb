class CreateMembers < ActiveRecord::Migration
  def change
    create_table :members do |t|
      t.string :first
      t.string :last
      t.string :email
      t.integer :phone
      t.string :carrier
      t.integer :proplesoft
      t.integer :two_p
      t.string :address
      t.string :status

      t.timestamps
    end
  end
end
