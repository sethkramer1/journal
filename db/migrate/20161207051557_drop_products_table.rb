class DropProductsTable < ActiveRecord::Migration
  def up
    drop_table :notifications
  end

  def down
    raise ActiveRecord::IrreversibleMigration
  end
end
