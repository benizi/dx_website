class FixPeopleSoftName < ActiveRecord::Migration
  def change
  	rename_column :members, :proplesoft, :peoplesoft
  end
end