class FixOperatorColumnTypeName < ActiveRecord::Migration
  def change
  	rename_column :operators, :type, :category
  end
end
