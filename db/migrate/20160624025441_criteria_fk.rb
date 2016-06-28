class CriteriaFk < ActiveRecord::Migration
  def change
  	remove_column :segments, :criterium_id
  	add_column :criteria, :segment_id, :integer
  end
end
