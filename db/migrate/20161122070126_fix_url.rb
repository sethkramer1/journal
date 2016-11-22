class FixUrl < ActiveRecord::Migration
  def change
   rename_column :links, :url, :description
 end
end
